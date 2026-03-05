library(tibble)

cinema_visitors <- tibble(
  viewers = c(41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51),
  days = c(1, 9, 13, 13, 20, 15, 10, 7, 5, 4, 3)
)

cinema_visitors_ind <- tibble(
  viewers = rep(cinema_visitors$viewers, cinema_visitors$days)
)

bvb_rankings <- tibble(
  year = 1988:2022,
  ranking = c(13, 7, 4, 10, 2, 4, 4, 1, 1, 3, 10, 4, 11, 3, 1, 3, 6, 7, 7, 9, 13, 6, 5, 1, 1, 2, 2, 7, 2, 3, 4, 2, 2, 3, 2)
)

website_dwell <- tibble(
  dwell_time_interval_min = c("(0,2]", "(2,4]", "(4,8]", "(8,12]", "(12,20]"),
  persons = c(24, 32, 20, 16, 8)
)

website_dwell_ind <- tibble(
  dwell_time_interval_min = rep(website_dwell$dwell_time_interval_min, website_dwell$persons)
)

checkout_times <- tibble(
  service_time_seconds = c(
    40, 20, 22, 15, 18, 51, 37, 42, 31, 58,
    33, 39, 49, 22, 23, 62, 42, 53, 43, 44,
    19, 49, 39, 36, 37, 38, 22, 24, 32, 29,
    41, 40, 39, 38, 27, 51, 52, 54, 28, 22,
    64, 19, 50, 40, 18, 68, 51, 41, 48, 57
  )
)

research_ads <- tibble(
  month = c("J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D"),
  research = c(15, 15, 20, 25, 15, 20, 30, 50, 35, 30, 25, 20),
  advertising = c(40, 25, 20, 20, 25, 20, 15, 10, 10, 20, 20, 15)
)

env_survey_eu10 <- tibble(
  age = c(25, 21, 47, 52, 32, 68, 15, 60, 19, 34),
  gender = c("w", "m", "m", "w", "w", "w", "m", "m", "w", "m"),
  income_eur = c(760, 540, 2400, 3900, 1200, 1300, 100, 1760, 400, 4800),
  environmental_protection = c("important", "indifferent", "unimportant", "important", "indifferent", "important", "unimportant", "unimportant", "unimportant", "important")
)

union_satisfaction <- tibble(
  union = c("1", "2", "total"),
  very_satisfied = c(260, 280, 540),
  satisfied = c(150, 140, 290),
  dissatisfied = c(30, 30, 60),
  very_dissatisfied = c(60, 50, 110),
  total = c(500, 500, 1000)
)

union_satisfaction_ind <- tibble(
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

sport_occupation <- tibble(
  occupation = c("worker", "employee", "civil_servant", "farmer", "freelance"),
  never = c(240, 160, 30, 37, 40),
  occasionally = c(120, 90, 30, 7, 32),
  regularly = c(70, 90, 30, 6, 18)
)

sport_occupation_ind <- tibble(
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

florida_sentencing <- tibble(
  defendant_skin_color = c("black", "white", "total"),
  death_penalty = c(17, 19, 36),
  other_sentence = c(149, 141, 290),
  total = c(166, 160, 326)
)

florida_sentencing_ind <- tibble(
  defendant_skin_color = c(rep("black", 166), rep("white", 160)),
  sentence = c(
    rep("death_penalty", 17), rep("other_sentence", 149),
    rep("death_penalty", 19), rep("other_sentence", 141)
  )
)

tv_gender <- tibble(
  tv_time_group = c("under_20h", "at_least_20h", "total"),
  men = c(100, 60, 160),
  women = c(80, 80, 160),
  total = c(180, 140, 320)
)

tv_gender_ind <- tibble(
  gender = c(rep("male", 160), rep("female", 160)),
  tv_time_group = c(
    rep("under_20h", 100), rep("at_least_20h", 60),
    rep("under_20h", 80), rep("at_least_20h", 80)
  )
)

car_occupation <- tibble(
  occupation = c("worker", "employee", "civil_servant", "self_employed"),
  audi = c(10, 10, 30, 40),
  bmw = c(10, 20, 20, 70),
  opel = c(60, 20, 10, 10),
  vw = c(80, 20, 80, 10),
  total = c(160, 70, 140, 130)
)

car_occupation_ind <- tibble(
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

company_financials <- tibble(
  company = c("Grunwol GmbH", "Technik AG", "Kimonade UG", "Tiefbau GmbH"),
  employees = c(26, 17, 3, 115),
  annual_revenue_mio_eur = c(3.56, 25.92, 0.08, 15.07),
  equity_share_pct = c(21.7, 11.9, 70.0, 25.4),
  credit_rating = c("ausgezeichnet", "sehr gut", "ausreichend", "gut")
)

order_quantities <- tibble(
  order_quantity = c(2, 2, 4, 4, 4, 4, 8, 10, 16, 16, 20, 24, 24, 30, 30, 30, 32, 32, 32, 36)
)

security_prices_ab <- tibble(
  year = c(1, 2, 3, 4, 5),
  paper_a = c(20, 30, 120, 160, 80),
  paper_b = c(50, 60, 30, 50, NA_real_)
)

cold_rents <- tibble(
  monthly_rent_eur = c(300, 250, 400, 500, 250, 600, 300, 300, 450, 400)
)

populations_i_ii <- tibble(
  population_i = c(2, 6, 6, 18),
  population_ii = c(102, 106, 106, 118)
)

xy_quadratic <- tibble(
  i = c(1, 2, 3, 4, 5, 6, 7),
  x = c(-3, -2, -1, 0, 1, 2, 3),
  y = c(9, 4, 1, 0, 1, 4, 9)
)

credit_ratings_two_reviewers <- tibble(
  company_id = c(1, 2, 3, 4, 5, 6, 7),
  reviewer_a = c(2, 2, 2, 6, 7, 8, 8),
  reviewer_b = c(3, 2, 4, 6, 5, 8, 10)
)

beverage_revenues <- tibble(
  year = c(2014, 2015, 2016, 2017),
  spritzi = c(120, 250, 300, 450),
  prickli = c(700, 500, 550, 350)
)

rent_living_area <- tibble(
  living_area_m2 = c(55, 65, 65, 80, 95),
  cold_rent_eur = c(300, 340, 410, 435, 530)
)

decathlon_3disc_summary <- tibble(
  discipline = c("100m", "long_jump", "shot_put"),
  mean = c(11.2512, 6.9694, 13.1182),
  variance = c(0.0799, 0.1008, 1.5379)
)

decathlon_3disc_covariances <- tibble(
  pair = c("100m_long_jump", "100m_shot_put", "shot_put_long_jump"),
  covariance = c(-0.0434, -0.0543, 0.0984)
)

exam_study_time <- tibble(
  study_days = c(14, 16, 22, 8, 10),
  points = c(35, 30, 48, 10, 22),
  max_points = c(50, 50, 50, 50, 50)
)

property_prices_distance <- tibble(
  distance_km = c(1, 3, 4, 5, 7),
  price_eur_per_m2 = c(300, 250, 250, 225, 175)
)

product_demand_testphases <- tibble(
  selling_price_eur = c(3, 4, 5, 3, 4, 5),
  product_quality = c(10, 10, 10, 5, 5, 5),
  demand = c(6, 4, 2, 2, 1, 0)
)

vehicle_range_coefficients <- tibble(
  regressor = c("intercept", "displacement_cubic_inches", "gears", "carburetors"),
  coefficient = c(20.0896, -0.0234, 2.7544, -1.6914)
)

workshop_cars_per_hour <- tibble(
  cars_per_hour = c(0, 1, 2),
  probability = c(0.5, 0.3, 0.2)
)

utility_vehicle_sales_weekly <- tibble(
  vehicles_sold = c(0, 1, 2, 3, 4, 5),
  probability = c(0.05, 0.10, 0.25, 0.35, 0.15, 0.10)
)

cinema_group_size_pmf <- tibble(
  group_size = c(1, 2, 3, 4, 5),
  probability = c(0.10, 0.40, 0.25, 0.20, 0.05)
)

computer_sales_country <- tibble(
  units = c(0, 1, 2, 3, 4, 5, 6),
  probability_country_a = c(0.3, 0.3, 0.2, 0.1, 0.05, 0.05, 0.0),
  probability_country_b = c(0.4, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1)
)

library_overdue_model <- tibble(
  weeks_overdue = c(0, 1, 2, 3, 4),
  probability_expression = c("0.1p", "0.2p", "0.3p", "0.4p", "1-p")
)

library_overdue_sample <- tibble(
  weeks_overdue = c(0, 1, 2, 3, 4),
  count = c(1, 2, 3, 4, 2)
)

gas_prices <- tibble(
  price_eur_per_liter = c(1.33, 1.35, 1.40, 1.39, 1.45, 1.40, 1.41, 1.35, 1.42, 1.39)
)

usethis::use_data(
  cinema_visitors,
  cinema_visitors_ind,
  bvb_rankings,
  website_dwell,
  website_dwell_ind,
  checkout_times,
  research_ads,
  env_survey_eu10,
  union_satisfaction,
  union_satisfaction_ind,
  sport_occupation,
  sport_occupation_ind,
  florida_sentencing,
  florida_sentencing_ind,
  tv_gender,
  tv_gender_ind,
  car_occupation,
  car_occupation_ind,
  company_financials,
  order_quantities,
  security_prices_ab,
  cold_rents,
  populations_i_ii,
  xy_quadratic,
  credit_ratings_two_reviewers,
  beverage_revenues,
  rent_living_area,
  decathlon_3disc_summary,
  decathlon_3disc_covariances,
  exam_study_time,
  property_prices_distance,
  product_demand_testphases,
  vehicle_range_coefficients,
  workshop_cars_per_hour,
  utility_vehicle_sales_weekly,
  cinema_group_size_pmf,
  computer_sales_country,
  library_overdue_model,
  library_overdue_sample,
  gas_prices,
  overwrite = TRUE
)
