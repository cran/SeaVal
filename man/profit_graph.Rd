% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diagrams.R
\name{profit_graph}
\alias{profit_graph}
\title{(Accumulative) profit graphs}
\usage{
profit_graph(
  dt,
  accumulative = TRUE,
  f = c("below", "normal", "above"),
  o = tc_cols(dt),
  by = NULL,
  pool = setdiff(dimvars(dt), by),
  dim.check = TRUE
)
}
\arguments{
\item{dt}{Data table containing tercile forecasts}

\item{accumulative}{Logic. Should the accumulative profit be plotted or the profit per forecast?}

\item{f}{column names of the prediction columns}

\item{o}{column name of the observation column}

\item{by}{column names of grouping variables. Default is NULL.}

\item{pool}{column names of pooling variables (used for the dimension check). Default is all dimvars.}

\item{dim.check}{Logical. If TRUE, the function checks whether the columns in by and pool span the entire data table.}
}
\value{
A list of gg objects which can be plotted by ggpubr::ggarrange (for example)
}
\description{
These graphs really only make sense if you have 50 or less observations.
Typical application would be when you compare seasonal mean forecasts to station data for a single location.
}
\examples{
dt = data.table(below = c(0.5,0.3,0),
                normal = c(0.3,0.3,0.7),
                above = c(0.2,0.4,0.3),
                tc_cat = c(-1,0,0),
                lon = 1:3)
print(dt)
p1 = profit_graph(dt)
p2 = profit_graph(dt,accumulative = FALSE)

if(interactive()){
plot(p1)
plot(p2)
}

}
