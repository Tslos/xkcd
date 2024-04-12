## code to prepare `xkcd_data` dataset goes here
library(jsonlite)

json_objects <- vector(mode = "list", 10)

for (i in 1:10) {
  url <- file.path("https://xkcd.com", i, "info.0.json") # construct url to first 10 comics
  json_objects[[i]] <- jsonlite::read_json(url)
  Sys.sleep(0.5) # take a pause to avoid rate limits
}
xkcd_data <- do.call(rbind, json_objects)
xkcd_data <- as.data.frame(xkcd_data)
usethis::use_data(xkcd_data, overwrite = TRUE)
