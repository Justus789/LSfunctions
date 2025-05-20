
#' files
#'
#' @param x either "kort" or "lang"
#' @param dir_path a path from which you want the list of folders
#'
#' @return A character string with information about working directory and a list with the folder structure
#' @export
#'
#' @examples
#' files("kort")
#' files("lang")
files <- function(x, dir_path = ".") {
  if (!x %in% c("kort", "lang")) {
    stop("Invalid option for 'x'. Please use 'kort' or 'lang'.")
  }

  if (!dir.exists(dir_path)) {
    stop("Directory does not exist: ", dir_path)
  }
  message("Dit is de working directory:\n", getwd())
  message("vanaf ", normalizePath(dir_path), " gaat de structuur zo:")
  files_list <- list.files(path = dir_path,
                           recursive = TRUE,
                           full.names = (x == "lang"))

  return(files_list)
}

