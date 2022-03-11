#' Shipping error data
#'
#' Dataset recording errors in the shipment and the type of delivery requested by the customer in the process.
#'
#' @format A tibble with 576 rows and 2 variables:
#' \describe{
#'   \item{error \[fct\]}{Indicator whether or not an error appeared during shipment.}
#'   \item{shipping \[fct\]}{Shipment method requested by the customer.} 
#' }
"shipping_errors"