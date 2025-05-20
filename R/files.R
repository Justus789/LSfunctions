
#' files()
#'
#' @param x either "kort" or "lang"
#' @param dir_path a path from which you want the list of folders
#'
#' @return A character string with information about working directory and a list with the folder structure
#' @export
#'
#' @examples
#' files("kort", "/tests/")
#' files("lang")
files <- function(x, dir_path = NA) {
  if (x == "kort") {
    if (is.na(dir_path)) {
      print("Hieronder de lijst met je files")
      print(list.files(path = ".", recursive = TRUE, full.names = TRUE))
    }
    else {
      print(paste("vanaf", paste0(getwd(), dir_path), "gaat de structuur zo"))
      print(list.files(path = paste0(getwd(), dir_path), recursive = TRUE))
    }
  }
  if (x == "lang") {
    if (is.na(dir_path)) {
      print("Hieronder de lijst met je files")
      print(list.files(path = ".", recursive = TRUE, full.names = TRUE))
    }
    else {
      print(paste("vanaf", paste0(getwd(), dir_path), "gaat de structuur zo"))
      print(list.files(path = paste0(getwd(), dir_path), recursive = TRUE, full.names = TRUE))
    }
  }
  if (is.na(x)) {
    # If an invalid argument is passed
    stop("Invalid option. Please use 'kort' or 'lang'.")
  }
}

