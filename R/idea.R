dilution <- function(C1 = NA, V1 = NA, C2 = NA, V2 = NA) {
  #Count if input is missing
  inputs <- c(C1, V1, C2, V2)
  missing_value <- sum(is.na(inputs))

  if (missing_value != 1) {
    stop("Please provide three of the four values: C1, V1, C2, V2.")
  }

  if (is.na(C1)) {
    C1 <- (C2 * V2) / V1
    return(list(C1 = C1))
  } else if (is.na(V1)) {
    V1 <- (C2 * V2) / C1
    return(list(V1 = V1))
  } else if (is.na(C2)) {
    C2 <- (C1 * V1) / V2
    return(list(C2 = C2))
  } else if (is.na(V2)) {
    V2 <- (C1 * V1) / C2
    return(list(V2 = V2))
  }
}
