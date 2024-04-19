#' @title Retrieve metadata about an xkcd comic
#'
#' @description
#' This function retrieves a JSON object describing that comic from the official xkcd API.
#' @param number A scalar numeric vector identifying an xkcd comic by number
#'
#' @return A list of clas xkcd with the following elements:
#' * num: a scalar muneric vector identifying the comic by number
#' * etc, etc, etc all other arguments (skipped for time in class)
#'
#' Note that many of these elements may hold missing data
#'
#' @examples
#' first_comic <- xkcd(1)
#' print(first_comic)
#'
#' @importFrom jsonlite read_json
#' @export
xkcd <- function(number) {
  url <- file.path("https://xkcd.com/", number, "info.0.json")
 results <- jsonlite::read_json(url)
 return(results)
}


#' @title Visualize xkcd comics
#'
#' @description
#' Given an [`xkcd`] object, this [`base::plot`] method retrieves the image file associated with
#' this comic from the xkcd website and displays it in the currently active graphics device (aka the
#' plot window)
#'
#' @importFrom httr GET
#' @importFrom png readPNG
#' @importFrom jpeg readJPEG
#' @importFrom grid grid.raster
#' @importFrom graphics plot.new
#' @param x an `xkcd` object
#' @param ...
#'
plot.xkcd <- function(x, ...) {

  img_type <- tools::file_ext(x$img)

  if (img_type == "png") {
    p <- png::readPNG(tmp$content)

  }
}

