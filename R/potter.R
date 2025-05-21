
#' potter
#'
#' @param x A number/integer or character string
#'
#' @return A character string with information about which book the number or string is in the series
#' @export
#'
#' @examples
#' potter(4)
potter <- function(x) {
  titles <- list("Philosopher's Stone", "Chamber of Secrets", "Prisoner of Azkaban", "Goblet of Fire", "Order of the Phoenix", "Half-Blood Prince", "Deathly Hallows")
  if (!is.numeric(x) || (x > 7) || (x < 1)) {
    stop("The potter function requires numeric input. Ranging from 1 to 7")
  }
  if (is.numeric(x)) {
    return(paste0("That is the book ", titles[x], " in the book series of Harry Potter"))
  }
}
