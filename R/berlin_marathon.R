#' Berlin Marathon results from 1999 to 2019
#'
#' Official finisher results for the Berlin Marathon from 1999 to 2019,
#' including cumulative split times at 5 km intervals and half marathon.
#'
#' @format A tibble with 678,711 rows and 18 variables:
#' \describe{
#'   \item{year}{Race year.}
#'   \item{race}{Race name.}
#'   \item{place_overall}{Overall finishing place in the published result list.}
#'   \item{first_name}{Runner first name.}
#'   \item{last_name}{Runner last name.}
#'   \item{nationality}{Three-letter nationality code.}
#'   \item{club}{Club or country/team label as published in the source data.}
#'   \item{gender}{Runner gender (`"M"` or `"W"` in the source data).}
#'   \item{time_full}{Official marathon finishing time.}
#'   \item{split_5k}{Cumulative time at 5 km.}
#'   \item{split_10k}{Cumulative time at 10 km.}
#'   \item{split_15k}{Cumulative time at 15 km.}
#'   \item{split_20k}{Cumulative time at 20 km.}
#'   \item{time_half}{Cumulative half-marathon time.}
#'   \item{split_25k}{Cumulative time at 25 km.}
#'   \item{split_30k}{Cumulative time at 30 km.}
#'   \item{split_35k}{Cumulative time at 35 km.}
#'   \item{split_40k}{Cumulative time at 40 km.}
#' }
#'
#' @source
#' Data files from Andrew Miller's `marathon-results` repository:
#' <https://github.com/AndrewMillerOnline/marathon-results>.
#'
#' Berlin Marathon files used for this dataset:
#' <https://github.com/AndrewMillerOnline/marathon-results/tree/main/Berlin>.
"berlin_marathon"
