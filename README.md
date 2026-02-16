[![R-CMD-check](https://github.com/mchlbckr/MSBStatsData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mchlbckr/MSBStatsData/actions/workflows/R-CMD-check.yaml)
[![GitHub release](https://img.shields.io/github/v/release/mchlbckr/MSBStatsData)](https://github.com/mchlbckr/MSBStatsData/releases)
[![License: GPL-3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN status](https://www.r-pkg.org/badges/version/MSBStatsData)](https://CRAN.R-project.org/package=MSBStatsData)
[![CRAN downloads](https://cranlogs.r-pkg.org/badges/MSBStatsData)](https://cran.r-project.org/package=MSBStatsData)
[![CRAN total downloads](https://cranlogs.r-pkg.org/badges/grand-total/MSBStatsData)](https://cran.r-project.org/package=MSBStatsData)

# MSBStatsData <img src="https://raw.githubusercontent.com/mchlbckr/MSBStatsData/main/hexagon.png" align="right" width="120" alt="MSBStatsData hex sticker" />

`MSBStatsData` provides curated teaching datasets for statistics and data science
courses at the [Münster School of Business](https://www.fh-muenster.de/msb/) at
[FH Münster](https://www.fh-muenster.de/).

The package is designed for reproducible exercises and solutions in R, with data
that works well across core topics like frequencies, location and dispersion
measures, association, regression, and introductory time series analysis.

## Installation

```r
install.packages("MSBStatsData")

# development version
# install.packages("pak")
# pak::pak("mchlbckr/MSBStatsData")
```

## Quick start

```r
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

```r
data(package = "MSBStatsData")
```

## Notes

- Most data objects are small and classroom-friendly.
- Where helpful, both aggregated and individual-level versions are provided.
- Data sources are documented in the respective dataset help pages (`?dataset_name`).
- GitHub releases may be ahead of the current CRAN version.
