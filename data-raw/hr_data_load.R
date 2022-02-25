
library(tidyverse)
hr_data <- readr::read_csv(here::here("data-raw", "hr_data.csv"))
hr_data <- hr_data %>% mutate(across(where(is_character), as_factor))
usethis::use_data(hr_data, overwrite = TRUE)
usethis::use_r("hr_data")
