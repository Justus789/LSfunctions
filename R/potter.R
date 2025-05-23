
#' potter
#'
#' @param x A number/integer ranging from 1 till 7. Can also be a string, if you remember a part of the title.
#'
#' @return A character string with information about which book the number is in the series
#' @export
#'
#' @examples
#' potter(4)
#' potter("goblet")
potter <- function(x) {

  titles <- c(
    "Philosopher's Stone",
    "Chamber of Secrets",
    "Prisoner of Azkaban",
    "Goblet of Fire",
    "Order of the Phoenix",
    "Half-Blood Prince",
    "Deathly Hallows")

  ordinal <- function(n) {
    suffix <- ifelse(n %% 100 %in% 11:13, "th",
              ifelse(n %% 10 == 1, "st",
              ifelse(n %% 10 == 2, "nd",
              ifelse(n %% 10 == 3, "rd", "th"))))
    paste0(n, suffix)
  }

  if (is.numeric(x)) {
    if ((x > length(titles)) || (x < 1)) {
      stop("The potter function requires numeric input. Ranging from 1 to 7")
    }
    return(paste0("That is the book ", titles[x], " in the book series of Harry Potter which is the ", ordinal(x), " book"))
  }

  if (is.character(x)) {
    match <- grep(x, titles, ignore.case = TRUE)

    if (length(match) == 0) {
      stop("No match found for the input string.")
    }
    return(paste0("That is the book ", titles[match], " in the book series of Harry Potter which is the ", ordinal(match), " book"))
  }

  stop("Invalid input. Please enter a number from 1 to 7 or a keyword from the title.")
}

