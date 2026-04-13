library(dplyr)
library(purrr)
library(readr)

build_berlin_marathon <- function(years = 1999:2019) {
  col_spec <- cols(
    place_overall = col_double(),
    first_name = col_character(),
    last_name = col_character(),
    nationality = col_character(),
    club = col_character(),
    time_full = col_time(format = ""),
    gender = col_character(),
    split_5k = col_time(format = ""),
    split_10k = col_time(format = ""),
    split_15k = col_time(format = ""),
    split_20k = col_time(format = ""),
    time_half = col_time(format = ""),
    split_25k = col_time(format = ""),
    split_30k = col_time(format = ""),
    split_35k = col_time(format = ""),
    split_40k = col_time(format = ""),
    Race = col_character(),
    year = col_double()
  )

  berlin_marathon <- map_dfr(years, function(year) {
    url <- sprintf(
      "https://raw.githubusercontent.com/AndrewMillerOnline/marathon-results/main/Berlin/results-%d.csv",
      year
    )

    read_csv(url, col_types = col_spec, show_col_types = FALSE)
  }) %>%
    transmute(
      year = as.integer(year),
      race = Race,
      place_overall = as.integer(place_overall),
      first_name,
      last_name,
      nationality,
      club,
      gender,
      time_full,
      split_5k,
      split_10k,
      split_15k,
      split_20k,
      time_half,
      split_25k,
      split_30k,
      split_35k,
      split_40k
    ) %>%
    arrange(year, place_overall, last_name, first_name)

  berlin_marathon
}

berlin_marathon <- build_berlin_marathon()

usethis::use_data(berlin_marathon, overwrite = TRUE)
