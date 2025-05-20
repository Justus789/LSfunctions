
load_all()

gram_change <- function(x, unit, desired_unit) {
  #check if x is numeric. x will be multiplied or divided
  if (!is.numeric(x)) {
    stop("Error: The variable 'x' must be numeric.")
  }

  #check if unit is a string
  if (!is.character(unit)) {
    stop("Error: The variable 'unit' must be a character. For example: g (for gram).")
  }

  #check if desired unit is a string
  if (!is.character(desired_unit)) {
    stop("Error: The variable 'desired_unit' must be a character. For example: mg (for milligram).")
  }

  #define unit changing multipliers
  conversion_factors <- list(
    "kg_to_g" = 1000,
    "g_to_mg" = 1000,
    "mg_to_ug" = 1000,
    "ug_to_ng" = 1000,
    "g_to_kg" = 1/1000,
    "mg_to_g" = 1/1000,
    "ug_to_mg" = 1/1000,
    "ng_to_ug" = 1/1000,
    "kg_to_mg" = 1e6,
    "mg_to_kg" = 1e-6,
    "mg_to_ng" = 1e6,
    "g_to_ug" = 1e6
  )

  #list of changing units
  key <- paste0(unit, "_to_", desired_unit)

  #check if change is possible
  if (!(key %in% names(conversion_factors))) {
    stop(paste("Error: Conversion from", unit, "to", desired_unit, "is not supported."))
  }

  #do the change
  result <- x * conversion_factors[[key]]
  return(paste0(result, " ", desired_unit))
}

#gram_change(180000.00, "mg", "kg")
#gram_change(20.74, "g", "ug")
