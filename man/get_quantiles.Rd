% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quantiles.R
\name{get_quantiles}
\alias{get_quantiles}
\title{Calculate quantiles from a data table}
\usage{
get_quantiles(
  dt,
  data_col = setdiff(names(dt), dimvars(dt))[1],
  qqs = c(10, 20, 33, 67, 80, 90),
  by = setdiff(dimvars(dt), c("year", "member")),
  description = NULL,
  save_file = NULL
)
}
\arguments{
\item{dt}{Data table containing the data.}

\item{data_col}{The name of the column in dt containing the data for which the quantiles are derived. By default the first column that is not a dimension variable is selected.}

\item{qqs}{Vector of quantiles. If one of them is larger 1 they are interpreted as percent. Default is the quantiles used in the verification maps.}

\item{by}{Column names in dt. Levels by which the quantiles are calculated}

\item{description}{Optional description string.}

\item{save_file}{Optional name of save file.}
}
\value{
Nothing if save_file is provided. Otherwise the list described above
}
\description{
The quantiles are saved in/returned as a list with the following elements:
\itemize{
\item dt - A data table with quantiles for each level of by (not the same as the input-dt).
\item quantiles - the vector of quantiles that were used.
\item group - a data table containing the levels the quantiles are grouped over, e.g. all years the quantiles are calculated over.
\item data_col_name - the name of data_col, see below, so that you know what the quantiles actually were computed from.
\item description - the description string, if provided.
}
}
\examples{
\donttest{get_quantiles(chirps_monthly)}

}
