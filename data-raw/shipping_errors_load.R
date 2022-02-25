
library(tidyverse)
shipping_errors <- readr::read_csv(here::here("data-raw", "shipping_errors.csv"))
shipping_errors <- shipping_errors %>% mutate(across(where(is_character), as_factor))
usethis::use_data(shipping_errors, overwrite = TRUE)
usethis::use_r("shipping_errors")
