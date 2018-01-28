context("test-test_names.R")

test_that("things have names", {
  expect_true(
    all(nchar(names(nord_palettes)))
  )
})
