test_that("files() works", {
  #Capture the printed output from the files() function
  captured_output <- capture_output({
    files("lang", dir_path = "/tests/")
  })

  #Define the expected output
  expected_output <- c("[1] \"Dit is de working directory\"\n[1] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions\"\n[1] \"vanaf /tests/ gaat de structuur zo\"\n[1] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions/tests/testthat.R\"                 \n[2] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions/tests/testthat/test-dilute.R\"     \n[3] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions/tests/testthat/test-doorzetten.R\" \n[4] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions/tests/testthat/test-gram_change.R\"\n[5] \"C:/Users/justu/OneDrive/Documenten/HU/dsfb2/LSfunctions/tests/testthat/test-probeersel.R\" "
  )

  # Compare the captured output to the expected output
  expect_equal(captured_output, expected_output)
})

test_that("files() gives an error without x", {
  expect_error(files(dir_path = "/tests/"))
})
