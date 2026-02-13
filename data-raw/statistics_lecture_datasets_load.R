library(tibble)

cinema_visitors_100days <- tibble(
  viewers = c(41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51),
  days = c(1, 9, 13, 13, 20, 15, 10, 7, 5, 4, 3)
)

bvb_final_rankings_1988_2022 <- tibble(
  year = 1988:2022,
  ranking = c(13, 7, 4, 10, 2, 4, 4, 1, 1, 3, 10, 4, 11, 3, 1, 3, 6, 7, 7, 9, 13, 6, 5, 1, 1, 2, 2, 7, 2, 3, 4, 2, 2, 3, 2)
)

website_dwell_time_grouped <- tibble(
  dwell_time_interval_min = c("(0,2]", "(2,4]", "(4,8]", "(8,12]", "(12,20]"),
  persons = c(24, 32, 20, 16, 8)
)

checkout_service_times <- tibble(
  service_time_seconds = c(
    40, 20, 22, 15, 18, 51, 37, 42, 31, 58,
    33, 39, 49, 22, 23, 62, 42, 53, 43, 44,
    19, 49, 39, 36, 37, 38, 22, 24, 32, 29,
    41, 40, 39, 38, 27, 51, 52, 54, 28, 22,
    64, 19, 50, 40, 18, 68, 51, 41, 48, 57
  )
)

research_ad_spending <- tibble(
  month = c("J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D"),
  research = c(15, 15, 20, 25, 15, 20, 30, 50, 35, 30, 25, 20),
  advertising = c(40, 25, 20, 20, 25, 20, 15, 10, 10, 20, 20, 15)
)

environment_survey_eu10 <- tibble(
  age = c(25, 21, 47, 52, 32, 68, 15, 60, 19, 34),
  gender = c("w", "m", "m", "w", "w", "w", "m", "m", "w", "m"),
  income_eur = c(760, 540, 2400, 3900, 1200, 1300, 100, 1760, 400, 4800),
  environmental_protection = c("important", "indifferent", "unimportant", "important", "indifferent", "important", "unimportant", "unimportant", "unimportant", "important")
)

union_agreement_satisfaction <- tibble(
  union = c("1", "2", "total"),
  very_satisfied = c(260, 280, 540),
  satisfied = c(150, 140, 290),
  dissatisfied = c(30, 30, 60),
  very_dissatisfied = c(60, 50, 110),
  total = c(500, 500, 1000)
)

union_agreement_satisfaction_individual <- tibble(
  union = c(
    rep("1", 500),
    rep("2", 500)
  ),
  satisfaction = c(
    rep("very_satisfied", 260),
    rep("satisfied", 150),
    rep("dissatisfied", 30),
    rep("very_dissatisfied", 60),
    rep("very_satisfied", 280),
    rep("satisfied", 140),
    rep("dissatisfied", 30),
    rep("very_dissatisfied", 50)
  )
)

sport_activity_by_occupation <- tibble(
  occupation = c("worker", "employee", "civil_servant", "farmer", "freelance"),
  never = c(240, 160, 30, 37, 40),
  occasionally = c(120, 90, 30, 7, 32),
  regularly = c(70, 90, 30, 6, 18)
)

sport_activity_by_occupation_individual <- tibble(
  occupation = c(
    rep("worker", 430),
    rep("employee", 340),
    rep("civil_servant", 90),
    rep("farmer", 50),
    rep("freelance", 90)
  ),
  sport_activity = c(
    rep("never", 240), rep("occasionally", 120), rep("regularly", 70),
    rep("never", 160), rep("occasionally", 90), rep("regularly", 90),
    rep("never", 30), rep("occasionally", 30), rep("regularly", 30),
    rep("never", 37), rep("occasionally", 7), rep("regularly", 6),
    rep("never", 40), rep("occasionally", 32), rep("regularly", 18)
  )
)

florida_murder_sentencing <- tibble(
  defendant_skin_color = c("black", "white", "total"),
  death_penalty = c(17, 19, 36),
  other_sentence = c(149, 141, 290),
  total = c(166, 160, 326)
)

florida_murder_sentencing_individual <- tibble(
  defendant_skin_color = c(rep("black", 166), rep("white", 160)),
  sentence = c(
    rep("death_penalty", 17), rep("other_sentence", 149),
    rep("death_penalty", 19), rep("other_sentence", 141)
  )
)

tv_viewing_by_gender <- tibble(
  tv_time_group = c("under_20h", "at_least_20h", "total"),
  men = c(100, 60, 160),
  women = c(80, 80, 160),
  total = c(180, 140, 320)
)

tv_viewing_by_gender_individual <- tibble(
  gender = c(rep("male", 160), rep("female", 160)),
  tv_time_group = c(
    rep("under_20h", 100), rep("at_least_20h", 60),
    rep("under_20h", 80), rep("at_least_20h", 80)
  )
)

car_brand_by_occupation <- tibble(
  occupation = c("worker", "employee", "civil_servant", "self_employed"),
  audi = c(10, 10, 30, 40),
  bmw = c(10, 20, 20, 70),
  opel = c(60, 20, 10, 10),
  vw = c(80, 20, 80, 10),
  total = c(160, 70, 140, 130)
)

car_brand_by_occupation_individual <- tibble(
  occupation = c(
    rep("worker", 160),
    rep("employee", 70),
    rep("civil_servant", 140),
    rep("self_employed", 130)
  ),
  brand = c(
    rep("audi", 10), rep("bmw", 10), rep("opel", 60), rep("vw", 80),
    rep("audi", 10), rep("bmw", 20), rep("opel", 20), rep("vw", 20),
    rep("audi", 30), rep("bmw", 20), rep("opel", 10), rep("vw", 80),
    rep("audi", 40), rep("bmw", 70), rep("opel", 10), rep("vw", 10)
  )
)

usethis::use_data(
  cinema_visitors_100days,
  bvb_final_rankings_1988_2022,
  website_dwell_time_grouped,
  checkout_service_times,
  research_ad_spending,
  environment_survey_eu10,
  union_agreement_satisfaction,
  union_agreement_satisfaction_individual,
  sport_activity_by_occupation,
  sport_activity_by_occupation_individual,
  florida_murder_sentencing,
  florida_murder_sentencing_individual,
  tv_viewing_by_gender,
  tv_viewing_by_gender_individual,
  car_brand_by_occupation,
  car_brand_by_occupation_individual,
  overwrite = TRUE
)
