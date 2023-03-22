test_that("lentgh matches base::length for getting length of double", {
  expect_equal(lentgh(base::diag(4)),  base::length(base::diag(4)))
  expect_equal(lentgh(base::diag(0)),  base::length(base::diag(0)))
})

test_that("lentgh matches base::length for getting length of options()", {
  expect_equal(lentgh(base::options()),  base::length(base::options()))
})

test_that("lentgh matches base::length for getting length of formula", {
  expect_equal(lentgh(y ~ x1 + x2 + x3),  base::length(y ~ x1 + x2 + x3))
  expect_equal(lentgh(y ~ .),  base::length(y ~ .))
})

test_that("lentgh matches base::length for getting length of expression", {
  expect_equal(lentgh(expression(x, {y <- x^2; y+2}, x^y)),
               base::length(expression(x, {y <- x^2; y+2}, x^y)))
  expect_equal(lentgh(expression()), base::length(expression()))
})
