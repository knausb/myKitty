% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/myMethods.R
\docType{methods}
\name{plot,track,missing-method}
\alias{names<-,track,character-method}
\alias{plot,ANY,track-method}
\alias{plot,track,ANY-method}
\alias{plot,track,missing-method}
\alias{track-methods}
\title{methods}
\usage{
\S4method{plot}{track,missing}(x, y, ...)

\S4method{plot}{ANY,track}(x, y, ...)

\S4method{plot}{track,ANY}(x, y, ...)

\S4method{names}{track,character}(x) <- value
}
\arguments{
\item{x}{numeric}

\item{y}{numeric}

\item{...}{other stuff}

\item{value}{character}
}
\description{
describe the methods
}
\examples{
t1 <- new("track", x=1:20, y=(1:20)^2)
plot(t1)


}

