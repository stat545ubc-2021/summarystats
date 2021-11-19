
library(palmerpenguins)
library(testthat)

#' test 1: does an error occur when x is numeric?
testthat::test_that("Invalid input for x", {
  expect_error(summarystat(palmerpenguins::penguins, "bill_length_mm", "species"))
})

#' test 2: Is a specific error message produced when y is not numeric?
testthat::test_that("error message is produced for x", {
  expect_error(summarystat(palmerpenguins::penguins, "bill_length_mm", "species"), "x cannot be numeric. x must be a factor or column name")
})

#' test 3: Testing that the column names are right
testthat::test_that("the column names are correct", {
  expect_named(summarystat(palmerpenguins::penguins, "species", "bill_length_mm"), c("species",
                                                               "mean", "median", "sd"))
})

#' test 4: testing that the table dimensions are right
testthat::test_that("the number of columns are correct", {
  expect_equal(4, ncol(summarystat(palmerpenguins::penguins, "species", "bill_length_mm")))
})


