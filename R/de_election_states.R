#' Bundestag election results by federal state
#'
#' Party-level second-vote results by German federal state for the 2021
#' Bundestag election result table (official publication format).
#'
#' @format A tibble with 377 rows and 6 variables:
#' \describe{
#'   \item{election_year}{Election year.}
#'   \item{state_code}{Two-digit federal state code.}
#'   \item{state}{Federal state name.}
#'   \item{party}{Party label in the official result file.}
#'   \item{votes}{Number of second votes.}
#'   \item{vote_share}{Second-vote share in percent.}
#' }
"de_election_states"
