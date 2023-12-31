% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{MSD_to_YM}
\alias{MSD_to_YM}
\title{Converts time given as 'months since date' (MSD) into years and months (YM)}
\usage{
MSD_to_YM(dt, timecol = "time", origin = "1981-01-01")
}
\arguments{
\item{dt}{a data table.}

\item{timecol}{name of the column containing the time.}

\item{origin}{The time column contains time in the format month since which date?}
}
\value{
data table with two new columns 'month' and 'year', the timecol is deleted.
}
\description{
Converts time given as 'months since date' (MSD) into years and months (YM)
}
\examples{
dt = MSD_to_YM(data.table(time = 0:12))
}
