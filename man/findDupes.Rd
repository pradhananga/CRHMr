% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findDupes.R
\name{findDupes}
\alias{findDupes}
\title{Finds duplicated datetimes in obs dataframe}
\usage{
findDupes(obs, dupefile = "", quiet = TRUE, logfile = "")
}
\arguments{
\item{obs}{Required. A \pkg{CRHMr} data frame containing obs values.}

\item{dupefile}{Optional. The name of the output file. If omitted the dupe file will be the name of the obs data frame, followed by \option{_dupedatetimes.csv}.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used.}
}
\value{
If there are duplicate datetimes, returns \code{TRUE}. If there are no duplicates, returns \code{FALSE}.
}
\description{
Finds duplicate datetime values. All of the duplicate values are written to a .csv file. Many time series, especially from Environment Canada, may contain duplicate datetimes.
}
\note{
If quiet=\code{FALSE}, the function gives a list of the duplicate datetimes. Use this function before removing duplicates and/or interpolation and imputation. Most importantly, use this function before writing values to an obs file. Duplicate datetime values in an obs file will prevent CRHM from executing.
}
\examples{
findDupes(BadLake7376, quiet=FALSE)
}
\seealso{
\code{\link{findGaps}} \code{\link{interpolate}} \code{\link{impute}} \code{\link{writeObsFile}}
}
\author{
Kevin Shook
}
