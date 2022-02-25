
library(tidyverse)
salary_trends <- readr::read_csv(here::here("data-raw", "salary_trends.csv"))
usethis::use_data(salary_trends, overwrite = TRUE)
usethis::use_r("salary_trends")
