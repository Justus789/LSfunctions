
#' project hulp
#'
#' @param x The character string to file needed
#'
#' @return a few lines of genes and the umap
#' @export
#'
#' @importFrom utils head
#'
#' @examples
#' \dontrun{
#' project("../dsfb2_workflows_exercises/Seurat_oefenen/justus/pbmc3k_filtered_gene_bc_matrices/filtered_gene_bc_matrices/hg19/")
#' }
project <- function(x) {
  utils::globalVariables(c("nFeature_RNA", "percent.mt"))
  # Load the PBMC dataset
  pbmc.data <- Seurat::Read10X(data.dir = x)

  # Initialize the Seurat object with the raw (non-normalized data).
  pbmc <- Seurat::CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)

  # The [[ operator can add columns to object metadata. This is a great place to stash QC stats
  pbmc[["percent.mt"]] <- Seurat::PercentageFeatureSet(pbmc, pattern = "^MT-")

  pbmc <- subset(pbmc, subset = nFeature_RNA > 200 & nFeature_RNA < 2500 & percent.mt < 5)

  pbmc <- Seurat::FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000)

  pbmc <- Seurat::NormalizeData(pbmc)

  # Identify the 10 most highly variable genes
  top10 <- utils::head(Seurat::VariableFeatures(pbmc), 10)

  all.genes <- rownames(pbmc)
  pbmc <- Seurat::ScaleData(pbmc, features = all.genes)

  pbmc <- Seurat::RunPCA(pbmc, features = Seurat::VariableFeatures(object = pbmc))

  pbmc <- Seurat::FindNeighbors(pbmc, dims = 1:10)
  pbmc <- Seurat::FindClusters(pbmc, resolution = 0.5)

  pbmc <- Seurat::RunUMAP(pbmc, dims = 1:10)

  # note that you can set `label = TRUE` or use the LabelClusters function to help label
  # individual clusters
  Seurat::DimPlot(pbmc, reduction = "umap")
}

#project("../dsfb2_workflows_exercises/Seurat_oefenen/justus/pbmc3k_filtered_gene_bc_matrices/filtered_gene_bc_matrices/hg19/")




