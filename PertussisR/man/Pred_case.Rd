% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Predcase.R
\name{Pred_case}
\alias{Pred_case}
\title{Predicting Pertussis Case}
\usage{
Pred_case(x, y)
}
\arguments{
\item{x}{is DTap-3 coverage}

\item{y}{is DTap-4 coverage}
}
\value{
the number of predicted cases from model
}
\description{
Based on the historical data of Pertussis cases and 3rd and 4th
dose of vaccination coverage from 1992-2017, a linear regression model was
created

Pertussis cases = DTap-3 + DTap-4.

The results of the regression model was used to create the prediction model
for expected number of cases based on the vaccination coverage
}
\examples{
Pred_case(96,85)
Pred_case (97,86)
Pred_case(coverage$x,coverage$y)

}
