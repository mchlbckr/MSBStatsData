#' Company profile sample
#'
#' Sample of four companies used in introductory tasks on variables and scales.
#'
#' @format A tibble with 4 rows and 5 variables:
#' \describe{
#'   \item{company}{Company name.}
#'   \item{employees}{Number of employees.}
#'   \item{annual_revenue_mio_eur}{Annual revenue in million EUR.}
#'   \item{equity_share_pct}{Equity share in percent.}
#'   \item{credit_rating}{Rating category.}
#' }
"company_financials"

#' Order quantities
#'
#' Order quantities per transaction from a small ordering sample.
#'
#' @format A tibble with 20 rows and 1 variable:
#' \describe{
#'   \item{order_quantity}{Ordered units per order.}
#' }
"order_quantities"

#' Cinema visitors over 100 days (individual-level)
#'
#' Expanded version of [cinema_visitors] with one row per observed day.
#'
#' @format A tibble with 100 rows and 1 variable:
#' \describe{
#'   \item{viewers}{Number of visitors counted on the day.}
#' }
"cinema_visitors_ind"

#' Grouped website dwell times (individual-level)
#'
#' Expanded version of [website_dwell] with one row per sampled person.
#'
#' @format A tibble with 100 rows and 1 variable:
#' \describe{
#'   \item{dwell_time_interval_min}{Interval of dwell time in minutes for the person.}
#' }
"website_dwell_ind"

#' Annual closing prices of two securities
#'
#' Five annual closing prices for security A and security B.
#'
#' @format A tibble with 5 rows and 3 variables:
#' \describe{
#'   \item{year}{Time index (1 to 5).}
#'   \item{paper_a}{Closing price of security A in EUR.}
#'   \item{paper_b}{Closing price of security B in EUR (year 5 unknown = `NA`).}
#' }
"security_prices_ab"

#' Monthly cold rents
#'
#' Ten observed monthly cold rents in EUR from one neighborhood.
#'
#' @format A tibble with 10 rows and 1 variable:
#' \describe{
#'   \item{monthly_rent_eur}{Monthly cold rent in EUR.}
#' }
"cold_rents"

#' Two populations I and II
#'
#' Two small populations used for comparing dispersion measures.
#'
#' @format A tibble with 4 rows and 2 variables:
#' \describe{
#'   \item{population_i}{Values of population I.}
#'   \item{population_ii}{Values of population II.}
#' }
"populations_i_ii"

#' Quadratic x-y observations
#'
#' Seven observations with a symmetric quadratic relationship between `x` and `y`.
#'
#' @format A tibble with 7 rows and 3 variables:
#' \describe{
#'   \item{i}{Observation index.}
#'   \item{x}{Value of X.}
#'   \item{y}{Value of Y.}
#' }
"xy_quadratic"

#' Credit ratings from two reviewers
#'
#' Two independent reviewers rated seven companies on a 1-10 scale.
#'
#' @format A tibble with 7 rows and 3 variables:
#' \describe{
#'   \item{company_id}{Company identifier.}
#'   \item{reviewer_a}{Score from reviewer A.}
#'   \item{reviewer_b}{Score from reviewer B.}
#' }
"credit_ratings_two_reviewers"

#' Beverage revenues
#'
#' Annual revenues of two beverage manufacturers in thousand EUR.
#'
#' @format A tibble with 4 rows and 3 variables:
#' \describe{
#'   \item{year}{Calendar year.}
#'   \item{spritzi}{Revenue of Spritzi in thousand EUR.}
#'   \item{prickli}{Revenue of Prickli in thousand EUR.}
#' }
"beverage_revenues"

#' Rent and living area
#'
#' Monthly cold rent and living area for five apartments.
#'
#' @format A tibble with 5 rows and 2 variables:
#' \describe{
#'   \item{living_area_m2}{Living area in square meters.}
#'   \item{cold_rent_eur}{Monthly cold rent in EUR.}
#' }
"rent_living_area"

#' Decathlon summary for three disciplines
#'
#' Mean and variance for 100m, long jump, and shot put from a large decathlon sample.
#'
#' @format A tibble with 3 rows and 3 variables:
#' \describe{
#'   \item{discipline}{Discipline name.}
#'   \item{mean}{Arithmetic mean of results.}
#'   \item{variance}{Variance of results.}
#' }
"decathlon_3disc_summary"

#' Decathlon covariances for three discipline pairs
#'
#' Covariances between the same three disciplines used in `decathlon_3disc_summary`.
#'
#' @format A tibble with 3 rows and 2 variables:
#' \describe{
#'   \item{pair}{Discipline pair label.}
#'   \item{covariance}{Covariance for the pair.}
#' }
"decathlon_3disc_covariances"

#' Exam points and study time
#'
#' Study days and exam points of five participants.
#'
#' @format A tibble with 5 rows and 3 variables:
#' \describe{
#'   \item{study_days}{Study time in days.}
#'   \item{points}{Achieved points.}
#'   \item{max_points}{Maximum achievable points.}
#' }
"exam_study_time"

#' Property prices and station distance
#'
#' Property prices per square meter and distance to next suburban rail station.
#'
#' @format A tibble with 5 rows and 2 variables:
#' \describe{
#'   \item{distance_km}{Distance to station in km.}
#'   \item{price_eur_per_m2}{Price in EUR per square meter.}
#' }
"property_prices_distance"

#' Product demand test phases
#'
#' Demand measured across test phases with varying selling price and product quality.
#'
#' @format A tibble with 6 rows and 3 variables:
#' \describe{
#'   \item{selling_price_eur}{Selling price in EUR.}
#'   \item{product_quality}{Product quality score.}
#'   \item{demand}{Observed demand.}
#' }
"product_demand_testphases"

#' Vehicle range model coefficients
#'
#' Estimated coefficients from a multiple linear regression for vehicle range.
#'
#' @format A tibble with 4 rows and 2 variables:
#' \describe{
#'   \item{regressor}{Regressor name.}
#'   \item{coefficient}{Estimated coefficient.}
#' }
"vehicle_range_coefficients"

#' Cars serviced per hour
#'
#' Probability function for hourly number of cars serviced in a repair shop.
#'
#' @format A tibble with 3 rows and 2 variables:
#' \describe{
#'   \item{cars_per_hour}{Number of cars serviced per hour.}
#'   \item{probability}{Probability mass.}
#' }
"workshop_cars_per_hour"

#' Weekly utility vehicle sales
#'
#' Probability function for weekly units sold of utility vehicles.
#'
#' @format A tibble with 6 rows and 2 variables:
#' \describe{
#'   \item{vehicles_sold}{Number of vehicles sold per week.}
#'   \item{probability}{Probability mass.}
#' }
"utility_vehicle_sales_weekly"

#' Cinema group size probability function
#'
#' Probability function for group size in cinema visits.
#'
#' @format A tibble with 5 rows and 2 variables:
#' \describe{
#'   \item{group_size}{Number of persons per group.}
#'   \item{probability}{Probability mass.}
#' }
"cinema_group_size_pmf"

#' Monthly computer sales in countries A and B
#'
#' Two discrete probability distributions for monthly sales volumes.
#'
#' @format A tibble with 7 rows and 3 variables:
#' \describe{
#'   \item{units}{Monthly number of sold units.}
#'   \item{probability_country_a}{Probability in country A.}
#'   \item{probability_country_b}{Probability in country B.}
#' }
"computer_sales_country"

#' Library overdue model
#'
#' Symbolic probability model for overdue weeks.
#'
#' @format A tibble with 5 rows and 2 variables:
#' \describe{
#'   \item{weeks_overdue}{Overdue weeks.}
#'   \item{probability_expression}{Probability expression as text.}
#' }
"library_overdue_model"

#' Library overdue sample
#'
#' Frequency sample of overdue weeks used for method-of-moments exercises.
#'
#' @format A tibble with 5 rows and 2 variables:
#' \describe{
#'   \item{weeks_overdue}{Overdue weeks.}
#'   \item{count}{Observed frequency.}
#' }
"library_overdue_sample"

#' Motorway gas prices
#'
#' Ten observed prices for regular gasoline (EUR per liter) from a motorway
#' section.
#'
#' @format A tibble with 10 rows and 1 variable:
#' \describe{
#'   \item{price_eur_per_liter}{Observed price in EUR per liter.}
#' }
"gas_prices"
