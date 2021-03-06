% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kpAddChromosomeNames.R
\name{kpAddChromosomeNames}
\alias{kpAddChromosomeNames}
\title{kpAddChromosomeNames}
\usage{
kpAddChromosomeNames(karyoplot, chr.names=NULL, xoffset=0, yoffset=0, ...)
}
\arguments{
\item{karyoplot}{a \code{karyoplot} object returned by a call to \code{plotKaryotype}}

\item{chr.names}{(character vector) the names to use for the chromosomes. If NULL, the chromosome names in the original genome will be used. (defaults to NULL)}

\item{xoffset}{(numeric) a number of units to move the the chromosome names on the x axis with respect to their standard position (defaults to 0)}

\item{yoffset}{(numeric) a number of units to move the the chromosome names on the y axis with respect to their standard position (defaults to 0)}

\item{...}{any additional parameter to be passed to the text plotting. All R base graphics params are passed along.}
}
\value{
invisibly returns the given karyoplot object
}
\description{
Plots the chromosome names in the karyoplot
}
\details{
Given a KaryoPlot object, plot the names of the depicted chromosomes. This 
function is usually automatically called by plotKaryotype unless 
\code{labels.plotter} is NULL.
}
\examples{

kp <- plotKaryotype(labels.plotter = NULL)
kpAddChromosomeNames(kp, col="red", srt=30)
 
}
\seealso{
\code{\link{plotKaryotype}}, \code{\link{getChromosomeNamesBoundingBox}}
}
