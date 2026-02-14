library(tibble)

build_nrw_population <- function() {
  url <- paste0(
    "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/",
    "demo_r_pjanaggr3?geoLevel=nuts3&sex=T&age=TOTAL&unit=NR&sinceTimePeriod=2020"
  )

  payload <- jsonlite::fromJSON(url)
  geo_index <- payload$dimension$geo$category$index
  geo_label <- payload$dimension$geo$category$label
  time_index <- payload$dimension$time$category$index

  geo_codes <- names(geo_index)
  years <- names(time_index)
  n_geo <- length(geo_codes)
  n_time <- length(years)

  values <- rep(NA_real_, n_geo * n_time)
  value_idx <- as.integer(names(payload$value))
  values[value_idx + 1] <- as.numeric(unlist(payload$value))

  df <- expand.grid(
    time_pos = 0:(n_time - 1),
    geo_pos = 0:(n_geo - 1)
  )
  df$value <- values

  nrw <- df[df$geo_pos %in% unname(geo_index[grepl("^DEA", names(geo_index))]), ]

  district_name <- unname(unlist(geo_label[geo_codes[nrw$geo_pos + 1]]))

  nrw_population <- tibble(
    year = as.integer(years[nrw$time_pos + 1]),
    nuts3_code = geo_codes[nrw$geo_pos + 1],
    district_name = district_name,
    district_type = ifelse(grepl("Kreisfreie Stadt", district_name), "urban district", "rural district"),
    population = as.integer(round(nrw$value))
  )

  nrw_population <- nrw_population[order(nrw_population$year, nrw_population$district_name), ]
  rownames(nrw_population) <- NULL
  nrw_population
}

build_de_elections <- function() {
  url <- "https://www.bundeswahlleiterin.de/dam/jcr/860495c9-83fb-4068-8a99-c1c985ffffd2/w-btw21_kerg2.csv"
  raw <- read.csv2(url, skip = 9, stringsAsFactors = FALSE, check.names = FALSE)

  sel <- raw[
    raw$Wahlart == "BT" &
      raw$Gebietsart == "Land" &
      raw$Gruppenart == "Partei" &
      raw$Stimme == 2,
  ]

  de_elections <- tibble(
    election_year = as.integer(format(as.Date(sel$Wahltag, format = "%d.%m.%Y"), "%Y")),
    state_code = sprintf("%02d", as.integer(sel$Gebietsnummer)),
    state = sel$Gebietsname,
    party = sel$Gruppenname,
    votes = as.integer(sel$Anzahl),
    vote_share = as.numeric(sel$Prozent)
  )

  de_elections <- de_elections[order(de_elections$state_code, de_elections$party), ]
  rownames(de_elections) <- NULL
  de_elections
}

build_de_energy_prices <- function() {
  series_map <- c(
    CP045 = "household_energy_total",
    CP0451 = "electricity",
    CP0452 = "gas",
    CP0453 = "liquid_fuels",
    CP0722 = "transport_fuels"
  )

  fetch_one <- function(coicop_code, series_name) {
    url <- sprintf(
      paste0(
        "https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/",
        "prc_hicp_midx?geo=DE&coicop=%s&unit=I15&freq=M&sinceTimePeriod=2018-01"
      ),
      coicop_code
    )

    payload <- jsonlite::fromJSON(url)
    times <- names(payload$dimension$time$category$index)
    vals <- rep(NA_real_, length(times))
    idx <- as.integer(names(payload$value))
    vals[idx + 1] <- as.numeric(unlist(payload$value))

    tibble(
      date = as.Date(paste0(times, "-01")),
      series = series_name,
      coicop = coicop_code,
      price_index_2015_100 = vals
    )
  }

  out <- lapply(seq_along(series_map), function(i) {
    fetch_one(names(series_map)[i], unname(series_map[i]))
  })

  de_energy_prices <- do.call(rbind, out)
  de_energy_prices <- de_energy_prices[order(de_energy_prices$date, de_energy_prices$series), ]
  rownames(de_energy_prices) <- NULL
  de_energy_prices
}

nrw_population <- build_nrw_population()
de_elections <- build_de_elections()
de_energy_prices <- build_de_energy_prices()

usethis::use_data(
  nrw_population,
  de_elections,
  de_energy_prices,
  overwrite = TRUE
)
