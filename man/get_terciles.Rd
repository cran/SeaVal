% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantiles.R
\name{get_terciles}
\alias{get_terciles}
\title{get terciles from a data table}
\usage{
get_terciles(...)
}
\arguments{
\item{...}{passed on to \code{\link{get_quantiles}}.}
}
\value{
See \code{\link{get_quantiles}}.
}
\description{
This function wraps \code{\link{get_quantiles}} with the fixed quantiles 0.33 and 0.67.
}
\examples{
\donttest{
# takes a few seconds:
get_terciles(chirps_monthly)
}

}
