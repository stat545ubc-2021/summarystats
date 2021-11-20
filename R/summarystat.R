
#' Summary statistics table
#'
#' This function summarizes the mean, median and standard deviation of the different
#'levels of a factor for a given data set. NAs in the data are not removed by default
#'but you can change this.
#'
#' @params data is the data set that holds the factor of interest.
#' @params x the factor with multiple levels that you wish to compare.
#' @params y the numeric vector that you wish to calculate the summary statistics for.
#' @return A table of summary statistics for each level of the given factor.
#' @examples
#' summarystat(palmerpenguins::penguins, "species", "body_mass_g", na.rm = TRUE)
#' summarystat(gapminder::gapminder, "continent", "lifeExp")
#' @importFrom stats median
#' @export
summarystat <- function(data, x, y, na.rm = FALSE){
  if(is.numeric(data[[x]])) {
    stop("x cannot be numeric. x must be a factor or column name")}
  if(is.character(data[[y]])) {
    stop("y cannot be a character. y must be a numerical variable")}
  x = as.name(x)
  y = as.name(y)
  data %>%
    dplyr::group_by(!!x) %>%
    dplyr::summarise(mean = mean(!!y, na.rm = na.rm),
              median = median(!!y, na.rm = na.rm),
              sd = sd(!!y, na.rm = na.rm))
}




