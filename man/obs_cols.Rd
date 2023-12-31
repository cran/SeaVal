% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary_functions.R
\name{obs_cols}
\alias{obs_cols}
\title{Observation column names}
\usage{
obs_cols(dt = NULL)
}
\arguments{
\item{dt}{optional data table. If provided, the function guesses which column contains the observations. Else it returns all recognized observation column names.}
}
\value{
Character vector with column names.
}
\description{
Note that this function guesses column names for observed precip, not observed tercile category.
}
\examples{
obs_cols()

}
