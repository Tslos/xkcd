#' @title Retrieve metadata about an xkcd comic
#'
#' @description
#' This function retrieves a JSON object describing that comic from the official xkcd API.
#'
#' @importFrom jsonlite read_json
#' @export
xkcd <- function(number) {
  url <- file.path("https://xkcd.com/", number, "info.0.json")
 results <- jsonlite::read_json(url)
 return(results)
}
