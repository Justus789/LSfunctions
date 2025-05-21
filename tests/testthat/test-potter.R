test_that("potter() gives the right book", {
  expect_equal(potter(2), "That is the book Chamber of Secrets in the book series of Harry Potter")
})

test_that("potter() gives an error when not using numeric input", {
  expect_error(potter("4"))
})

test_that("potter() gives an error if the number is out of range", {
  expect_error(potter(9))
})
