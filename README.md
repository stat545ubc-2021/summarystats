
<!-- README.md is generated from README.Rmd. Please edit that file -->

# summarystats

<!-- badges: start -->
<!-- badges: end -->

The goal of summarystats is to create a table of summary statistics
(i.e., mean, median and standard deviation) of the different levels for
a given factor.

## Installation

summarystat is not yet on CRAN. You can, however, download it from this
repository using the following R command:

``` r
devtools::install_github("stat545ubc-2021/summarystats")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(summarystats)
summarystat(gapminder::gapminder, "continent", "lifeExp")
#> # A tibble: 5 x 4
#>   continent  mean median    sd
#>   <fct>     <dbl>  <dbl> <dbl>
#> 1 Africa     48.9   47.8  9.15
#> 2 Americas   64.7   67.0  9.35
#> 3 Asia       60.1   61.8 11.9 
#> 4 Europe     71.9   72.2  5.43
#> 5 Oceania    74.3   73.7  3.80
```
