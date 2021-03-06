# test-consolidate.R

library(RSQLite)
library(stringi)
library(purrr)

context("Storage of consolidated data")

test_that("Data are properly stored", {

  # Test saving of brand-new database
  dtTbl <- stri_rand_strings(1, 7, pattern = '[A-Za-z]')
  dFrame <-
    data.frame(a = letters, b = LETTERS, c = seq_len(length(letters)))
  database <- 'data/test.db'
  storeConsolidatedData(dFrame, database, table = dtTbl)

  # Test overwriting
  dFrame2 <- map_df(dFrame, function(x) sample(x, size = 26, replace = TRUE))
  storeConsolidatedData(dFrame2, database, table = dtTbl)
})
