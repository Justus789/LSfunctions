
test_that("doorzetten() gives a reply", {
  expect_equal(doorzetten("nee"), "Weet je zeker dat je klaar bent? Anders zou ik toch ja invoeren bij de variable")
})

test_that("doorzetten() tells you to give one of the prepared answers", {
  expect_equal(doorzetten("misschien"), "Deze function heeft een paar antwoorden voorbereidt die je kan gebruiken. Check de ?doorzetten om ze te vinden.")
})

test_that("doorzetten() only accepts character string", {
  expect_error(doorzetten(25))
})
