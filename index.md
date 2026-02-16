# MSBStatsData ![MSBStatsData hex sticker](https://raw.githubusercontent.com/mchlbckr/MSBStatsData/main/hexagon.png)

`MSBStatsData` provides curated teaching datasets for statistics and
data science courses at the [Münster School of
Business](https://www.fh-muenster.de/msb/) at [FH
Münster](https://www.fh-muenster.de/).

The package is designed for reproducible exercises and solutions in R,
with data that works well across core topics like frequencies, location
and dispersion measures, association, regression, and introductory time
series analysis.

## Installation

``` r
install.packages("MSBStatsData")

# development version
# install.packages("pak")
# pak::pak("mchlbckr/MSBStatsData")
```

## Quick start

``` r
library(MSBStatsData)

data("cinema_visitors")
head(cinema_visitors)

data("de_energy_prices")
subset(
  de_energy_prices,
  series %in% c("electricity", "transport_fuels")
)[1:6, c("date", "series", "price_index_2015_100")]
```

## Selected datasets

- Core teaching data
  - `cinema_visitors`
  - `bvb_rankings`
  - `website_dwell`
  - `checkout_times`
  - `research_ads`
  - `env_survey_eu10`
- Contingency-table data (aggregated + individual)
  - `union_satisfaction`
  - `union_satisfaction_ind`
  - `sport_occupation`
  - `sport_occupation_ind`
  - `florida_sentencing`
  - `florida_sentencing_ind`
  - `tv_gender`
  - `tv_gender_ind`
  - `car_occupation`
  - `car_occupation_ind`
- Münster mobility data
  - `ms_bike_sites`
  - `ms_bike_hourly_2025`
  - `ms_bike_hourly_2025_city`
- Public statistics snapshots (Germany/NRW)
  - `nrw_population`
  - `de_elections`
  - `de_energy_prices`

## Listing all datasets

``` r
data(package = "MSBStatsData")
```

## Notes

- Most data objects are small and classroom-friendly.
- Where helpful, both aggregated and individual-level versions are
  provided.
- Data sources are documented in the respective dataset help pages
  (`?dataset_name`).
- GitHub releases may be ahead of the current CRAN version.
