test_that("potter() gives the right book", {
  expect_equal(potter(2), "That is the book Chamber of Secrets in the book series of Harry Potter which is the 2nd book")
})

test_that("potter() gives an error if the number is out of range", {
  expect_error(potter(9))
})

test_that("potter() uses character input", {
  expect_equal(potter("blood"), "That is the book Half-Blood Prince in the book series of Harry Potter which is the 6th book")
})
