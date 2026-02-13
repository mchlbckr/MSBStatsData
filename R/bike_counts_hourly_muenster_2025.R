#' Hourly bike counts in Muenster by station (2025)
#'
#' Hourly totals derived from 15-minute open data published by the City of
#' Muenster for available bike counting stations in 2025.
#'
#' @format A tibble with 210,240 rows and 4 variables:
#' \describe{
#'   \item{station_id}{Station identifier.}
#'   \item{station_name}{Readable station name.}
#'   \item{datetime_hour}{Hour timestamp (local time, Europe/Berlin).}
#'   \item{bikes_total}{Total counted bikes in the hour.}
#' }
"bike_counts_hourly_muenster_2025"
