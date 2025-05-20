
test_that("dilution() can dilute with 3 values", {
  expect_equal(dilution(C1 = 3, V1 = 4, C2 = 2), list(V2 = 6))
})

test_that("dilution() gives an error when using more than 4", {
  expect_error(dilution(C1 = 1, V1 = 4, C2 = 5, V2 = 6))
})

test_that("dilution() can test other values than V2", {
  expect_equal(dilution(V1 = 4, C2 = 4, V2 = 6), list(C1 = 6))
})
