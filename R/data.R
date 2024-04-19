#' @title Metatdata for the first 10 xkcd comics
#'
#' @format
#' \describe{
#' \item{month}{Month of the year the comic was published}
#' \item{num}{Comic number}
#' \item{link}{Link to relevant context, source information or a large version of the comic image. This field is empty for the first 10 comics}
#' \item{year}{The year the comic was published}
#' \item{news}{seemingly random tidbits of information about the comic (e.g. backstory, contributors, merchandise links). This may contain html for later comics but is blank for the first 10 comics}
#' \item{safe_title}{The title of the comic. I'm not sure what's so safe about it...}
#' \item{transcript}{The transcription of the text in the comic image}
#' \item{alt}{The alt text for the image in the web browser.}
#' \item{img}{A URL linking to the comic image}
#' \item{title}{The title of the comic, apparently this title is "unsafe"}
#' \item{day}{day of the month the comic was published}
#' }
#' @source<http://xkcd.json.html>
"xkcd_data"
