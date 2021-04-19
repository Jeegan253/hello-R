# Pertussis expected cases based on vaccination coverage
#
# Based on the historical data since introduction of DTap vaccine in 1992
# till 2017, a linear model was created. DTap- 3rd dose and DTap 4th dose were
# significant predictors of cases.
#
# Pertussis cases = DTap-3 + DTap-4
#
# A results of the linear regression were used to create a predictive package
# by incorporating the coverage of DTap-3 and DTap-4 to obtain the expected cases
# in given year





prediction <- function(x,y) {
  cases <- 277289 - (5988.21*x) + (3710.91*y)
  return (cases)
}
prediction(95,84.2)
