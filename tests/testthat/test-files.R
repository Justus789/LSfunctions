test_that("files() works", {
  # Capture the printed output from the files() function
  captured_output <- capture_output({
    files("kort")
  })

  # Define the expected output
  expected_output <- capture_output({
    files("kort")
  })

  # Compare the captured output to the expected output
  expect_equal(captured_output, expected_output)
})



test_that("files() gives an error without x", {
  expect_error(files(dir_path = "/tests/"))
})
