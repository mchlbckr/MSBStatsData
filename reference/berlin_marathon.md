# Berlin Marathon results from 1999 to 2019

Official finisher results for the Berlin Marathon from 1999 to 2019,
including cumulative split times at 5 km intervals and half marathon.

## Usage

``` r
berlin_marathon
```

## Format

A tibble with 678,711 rows and 18 variables:

- year:

  Race year.

- race:

  Race name.

- place_overall:

  Overall finishing place in the published result list.

- first_name:

  Runner first name.

- last_name:

  Runner last name.

- nationality:

  Three-letter nationality code.

- club:

  Club or country/team label as published in the source data.

- gender:

  Runner gender (`"M"` or `"W"` in the source data).

- time_full:

  Official marathon finishing time.

- split_5k:

  Cumulative time at 5 km.

- split_10k:

  Cumulative time at 10 km.

- split_15k:

  Cumulative time at 15 km.

- split_20k:

  Cumulative time at 20 km.

- time_half:

  Cumulative half-marathon time.

- split_25k:

  Cumulative time at 25 km.

- split_30k:

  Cumulative time at 30 km.

- split_35k:

  Cumulative time at 35 km.

- split_40k:

  Cumulative time at 40 km.

## Source

Data files from Andrew Miller's `marathon-results` repository:
<https://github.com/AndrewMillerOnline/marathon-results>.

Berlin Marathon files used for this dataset:
<https://github.com/AndrewMillerOnline/marathon-results/tree/main/Berlin>.
