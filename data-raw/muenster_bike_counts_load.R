library(tibble)

base_url <- "https://raw.githubusercontent.com/od-ms/radverkehr-zaehlstellen/main"

ms_bike_sites <- tibble(
  station_id = c(
    "100020113", "100031297", "100031300", "100034980", "100034981", "100034982",
    "100034983", "100035541", "100053305", "300037405", "300037544", "300037920",
    "300037925", "300037926", "300037928", "300037931", "300037932", "300037933",
    "300037936", "300038855", "300039328", "300039331", "100034978", "300039333"
  ),
  station_name = c(
    "Wolbecker Strasse", "Promenade Nord", "Hafenstrasse", "Hammer Strasse", "Weseler Strasse", "Huefferstrasse",
    "Warendorfer Strasse", "Neutor", "Kanalpromenade Abschnitt 5", "Promenade West", "Kanalpromenade Abschnitt 1", "Luetkenbecker Weg",
    "Goldstrasse", "Bohlweg", "Kinderhauser Strasse", "Gasselstiege", "Schmeddingstrasse", "Weissenburgstrasse",
    "Kanalpromenade Abschnitt 6", "Bismarckallee", "Coesfelder Kreuz", "Grevener Strasse", "Gartenstrasse", "Kanalpromenade Oelhafen"
  )
)

download_station_month <- function(station_id, station_name, year, month) {
  file_url <- sprintf("%s/%s/%04d-%02d.csv", base_url, station_id, year, month)
  raw <- tryCatch(read.csv(file_url, check.names = FALSE), error = function(e) NULL)
  if (is.null(raw)) {
    return(NULL)
  }

  total_col <- grep(paste0("^", station_id, " \\("), names(raw), value = TRUE)
  if (length(total_col) == 0) {
    return(NULL)
  }

  datetime <- as.POSIXct(raw$Datetime, format = "%Y-%m-%d %H:%M", tz = "Europe/Berlin")
  bikes_15min <- as.numeric(raw[[total_col[1]]])

  hour <- as.POSIXct(format(datetime, "%Y-%m-%d %H:00:00"), format = "%Y-%m-%d %H:%M:%S", tz = "Europe/Berlin")
  aggregated <- aggregate(bikes_15min, by = list(datetime_hour = hour), FUN = sum, na.rm = TRUE)

  tibble(
    station_id = station_id,
    station_name = station_name,
    datetime_hour = aggregated$datetime_hour,
    bikes_total = as.integer(aggregated$x)
  )
}

year_to_download <- 2025
monthly_station_data <- vector("list", nrow(ms_bike_sites) * 12)
idx <- 1

for (i in seq_len(nrow(ms_bike_sites))) {
  for (m in 1:12) {
    monthly_station_data[[idx]] <- download_station_month(
      station_id = ms_bike_sites$station_id[i],
      station_name = ms_bike_sites$station_name[i],
      year = year_to_download,
      month = m
    )
    idx <- idx + 1
  }
}

ms_bike_hourly_2025 <- do.call(rbind, monthly_station_data)

ms_bike_hourly_2025_city <- aggregate(
  ms_bike_hourly_2025$bikes_total,
  by = list(datetime_hour = ms_bike_hourly_2025$datetime_hour),
  FUN = sum,
  na.rm = TRUE
)

ms_bike_hourly_2025_city <- tibble(
  datetime_hour = ms_bike_hourly_2025_city$datetime_hour,
  bikes_total = as.integer(ms_bike_hourly_2025_city$x)
)

usethis::use_data(
  ms_bike_sites,
  ms_bike_hourly_2025,
  ms_bike_hourly_2025_city,
  overwrite = TRUE
)
