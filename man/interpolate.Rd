% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolate.R
\name{interpolate}
\alias{interpolate}
\title{Fills missing obs values by interpolation}
\usage{
interpolate(obs, varcols = 1, methods = "linear", maxlength = 5,
  quiet = TRUE, logfile = "")
}
\arguments{
\item{obs}{Required. The \pkg{CRHMr} data frame of obs values.}

\item{varcols}{Optional. A vector containing the columns to be imputed in the obs data frame, not including the datetime. If not specified, defaults to the first column.}

\item{methods}{Optional. A vector containing the methods to be used for interpolation for each of the variables. Currently supported methods are \option{linear} and \option{spline}. The default is to use linear interpolation. If fewer methods than columns are specified, the methods are recycled.}

\item{maxlength}{Optional. The maximum gap length to be interpolated. Defaults to 5 time steps.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}

\item{logfile}{Optional. Name of the file to be used for logging the action. Normally not used.}
}
\value{
If successful, returns a modified version of the \code{obs} data frame. The missing values in the specified data frame are replaced by interpolated values. If unsuccessful, returns the value \code{FALSE}.
}
\description{
Missing (\code{NA}) values in a \pkg{CRHMr} obs data frame are filled by linear or spline interpolation. The user can set the maximum gap length (in time steps) allowed to be filled. Note that this function will \emph{NOT} interpolate RH or precipitation values.
}
\note{
In addition to the usual notation in the logfile, this function also writes a separate logfile which summarises the original obs data frame, and the new infilled data frame. The summaries are also printed to the screen, if \code{quiet=FALSE}. The logfile also contains a complete listing of the source of each value in the infilled data frame. Each value is listed as being \option{original} (unmodified from the primary obsframe), \option{linear interpolation} (infilled by linear interpolation), \option{spline interpolation} (infilled by spline interpolation) or \option{NA} (missing).
}
\examples{
\dontrun{
v.filled <- interpolate(v, c(1,3))}
}
\seealso{
\code{\link{impute}}  \code{\link{distributeP}}
}
\author{
Kevin Shook
}
