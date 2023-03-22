test_that("lenhtg matches base::length for getting length of double", {
  expect_equal(lenhtg(base::diag(4)),  base::length(base::diag(4)))
  expect_equal(lenhtg(base::diag(0)),  base::length(base::diag(0)))
})

test_that("lenhtg matches base::length for getting length of options()", {
  expect_equal(lenhtg(base::options()),  base::length(base::options()))
})

test_that("lenhtg matches base::length for getting length of formula", {
  expect_equal(lenhtg(y ~ x1 + x2 + x3),  base::length(y ~ x1 + x2 + x3))
  expect_equal(lenhtg(y ~ .),  base::length(y ~ .))
})

test_that("lenhtg matches base::length for getting length of expression", {
  expect_equal(lenhtg(expression(x, {y <- x^2; y+2}, x^y)),
               base::length(expression(x, {y <- x^2; y+2}, x^y)))
  expect_equal(lenhtg(expression()), base::length(expression()))
})
