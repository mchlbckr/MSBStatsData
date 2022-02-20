# https://rstudio4edu.github.io/rstudio4edu-book/data-pkg.html
library(tidyverse)
marketing_expenses <- readr::read_csv(here::here("data-raw", "marketing_expenses.csv"))
marketing_expenses <- marketing_expenses %>% mutate(across(where(is_character), as_factor))
usethis::use_data(marketing_expenses, overwrite = TRUE)
