# Hourly bike counts in Muenster by station (2025)

Hourly totals derived from 15-minute open data published by the City of
Muenster for available bike counting stations in 2025.

## Usage

``` r
ms_bike_hourly_2025
```

## Format

A tibble with 210,240 rows and 4 variables:

- station_id:

  Station identifier.

- station_name:

  Readable station name.

- datetime_hour:

  Hour timestamp (local time, Europe/Berlin).

- bikes_total:

  Total counted bikes in the hour.
