context("utils")

test_that("%||% works", {
  expect_equal(1, 1 %||% 7)
  expect_equal(1, NULL %||% 1)
  expect_equal(1, c() %||% 1)
  expect_equal(1, 1 %||% stop("oh no"))
})

test_that("add_email_scope() works", {
  expect_identical(add_email_scope(), "email")
  expect_identical(add_email_scope("email"), "email")
  expect_identical(
    add_email_scope("whatever"),
    c("whatever", "email")
  )
  expect_equivalent(
    add_email_scope(c("whatever" = "whatever")),
    c("whatever", "email")
  )
})
