
library(tidyverse)
decathlon <- readr::read_csv(here::here("data-raw", "decathlon.csv"))
usethis::use_data(decathlon, overwrite = TRUE)
usethis::use_r("decathlon")

