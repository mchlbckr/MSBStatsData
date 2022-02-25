
library(tidyverse)
sorting_times <- readr::read_csv(here::here("data-raw", "sorting_times.csv"))
sorting_times <- sorting_times %>% mutate(across(where(is_character), as_factor))
usethis::use_data(sorting_times, overwrite = TRUE)
usethis::use_r("sorting_times")
