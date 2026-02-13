#' Monthly consumer energy price indices in Germany
#'
#' Monthly Harmonised Index of Consumer Prices (HICP) sub-indices for selected
#' energy categories in Germany (index base 2015 = 100).
#'
#' @format A tibble with 480 rows and 4 variables:
#' \describe{
#'   \item{date}{Month of observation.}
#'   \item{series}{Energy category series label.}
#'   \item{coicop}{COICOP classification code.}
#'   \item{price_index_2015_100}{Price index value (2015 = 100).}
#' }
"de_energy_prices_monthly"
