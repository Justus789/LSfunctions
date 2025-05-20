
test_that("gram_change() can convert integers", {
  expect_equal(gram_change(1, "g", "mg"), "1000 mg")
})

test_that("gram_change() can do bigger conversions", {
  expect_equal(gram_change(1, "g", "ug"), "1e+06 ug")
})

test_that("gram_change() can not convert unnecessary changes", {
  expect_error(gram_change("mg", "mg", "ug"))
})
