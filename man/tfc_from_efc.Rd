% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{tfc_from_efc}
\alias{tfc_from_efc}
\title{Get tercile probability forecast from ensemble forecasts}
\usage{
tfc_from_efc(dt, by = setdiff(dimvars(dt), "member"), keep_cols = NULL, ...)
}
\arguments{
\item{dt}{The data table.}

\item{by}{Names of columns to group by.}

\item{keep_cols}{A vector of column names that you want to keep. Column names in by are kept automatically.}

\item{...}{passed on to \code{\link{add_tercile_probs}}.}
}
\value{
A new data table with tercile forecasts
}
\description{
The function takes a data table containing ensemble predictions and reduces it to predicted tercile probabilities.
The data table should either have a column 'tercile_cat' or it will be generated in the process (by \code{\link{add_tercile_cat}}).
In particular, if you don't know the tercile category of the ensemble predictions, your data table should contain hindcasts as well,
such that the tercile categories are calculated correctly.
The probability for 'below', for example, is the fraction of ensemble members predicting below normal (for this coordinate).
}
\examples{
test_dt = ecmwf_monthly[lat < 0 & month == 11]
tfc = tfc_from_efc(test_dt)


}
