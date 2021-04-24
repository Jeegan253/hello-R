#' @title Predicting Pertussis Case
#'
#' @description Based on the historical data of Pertussis cases and 3rd and 4th
#' dose of vaccination coverage from 1992-2017, a linear regression model was
#' created
#'
#' Pertussis cases = DTap-3 + DTap-4.
#'
#' The results of the regression model was used to create the prediction model
#' for expected number of cases based on the vaccination coverage
#'
#' @param x is DTap-3 coverage
#' @param y is DTap-4 coverage
#' @return the number of predicted cases from model
#' @examples
#' Exp_case(96,85)
#' Exp_case (97,86)
#'
#' @export
Exp_case <- function(x,y) {
  cases <- (277288.7 -(5988.2*x) + (3710.9*y))
  return(cases)
}
