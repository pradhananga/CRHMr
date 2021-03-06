% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basinWaterBalancePlot.R
\name{basinWaterBalancePlot}
\alias{basinWaterBalancePlot}
\title{Stacked plot of yearly water balance variables}
\usage{
basinWaterBalancePlot(yearlyWater, negCols = "")
}
\arguments{
\item{yearlyWater}{Required. A data frame of water balance components. The first column must be the year. Note that this function does not allow you to select columns - all columns will be plotted.}

\item{negCols}{Optional. Columns to be plotted as negative values. If not specified (the default) the columns will be guessed from their names.}
}
\value{
If successful returns a \pkg{ggplot2} object showing stacked bars of the water balance components for each year. If unsuccessful returns \code{FALSE}.
}
\description{
Creates a stacked bar plot of all water balance components computed for a basin. Basin inputs are plotted as positive values, outputs are plotted as negative.
}
\examples{
\dontrun{
# get daily water balance from CRHM output
daily <- simpleDailyWater(Bol84, prjFile = 'Bologna1984_02.prj',
basinMean = TRUE, summarize = TRUE)

# get yearly values
daily.datetime <- dateToDatetime(daily, timezone='Etc/GMT+7')
yearly <- aggDataframe(daily.datetime, period='hydro', funs='sum')

# plot
p <- basinWaterBalancePlot(yearly)
}
}
