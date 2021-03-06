% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text.R
\name{getTextSize}
\alias{getTextSize}
\title{getTextSize}
\usage{
getTextSize(karyoplot, labels, cex=1, data.panel="1")
}
\arguments{
\item{karyoplot}{(KaryoPlot) A KaryoPlot object representing the current plot}

\item{labels}{(character) The character strings to measure}

\item{cex}{(numeric) The cex value used to plot the text (defaults to 1)}

\item{data.panel}{(data panel identifier) The name of the data panel on which text was plotted. (defaults to "1")}
}
\value{
Returns a list with two elements: width and height. Each of them is a numeric
vector of the same length as "labels" with the width in bases of each label
and the height in r units of each label.
}
\description{
Returns the size of character strings in bases and r's
}
\details{
Small utility function to get the size of text labels in usable units for
karyoploteR: bases for the width and r's for the height. The r units are the
ones passed to r0 and r1 and take into account that a data panel has always
total height of 1 r (from r0=0 to r1=1)
}
\examples{

pp <- getDefaultPlotParams(plot.type=2)
pp$data2height <- 50

kp <- plotKaryotype(chromosomes="chr1", plot.type=2, plot.params=pp)
 
label <- "Looooooong label"
kpText(kp, chr="chr1", x=70e6, y=0.5, labels=label)
text.size <- getTextSize(kp, labels=label)
kpRect(kp, chr="chr1", x0=70e6-text.size$width/2, x1=70e6+text.size$width/2,
           y0=0.5-text.size$height/2, y1=0.5+text.size$height/2)
 
label <- "SHORT"
text.size <- getTextSize(kp, labels=label, cex=3)
kpRect(kp, chr="chr1", x0=170e6-text.size$width/2, x1=170e6+text.size$width/2,
           y0=0.2-text.size$height/2, y1=0.2+text.size$height/2, col="gold")
kpText(kp, chr="chr1", x=170e6, y=0.2, labels=label, cex=3)
    
label <- c("two_labels", "in a small data.panel=2")
kpText(kp, chr="chr1", x=c(100e6, 170e6), y=c(0.4, 0.2), labels=label, cex=0.6, data.panel=2)
text.size <- getTextSize(kp, labels=label, cex=0.6, data.panel=2)
kpRect(kp, chr="chr1", x0=c(100e6, 170e6)-text.size$width/2, x1=c(100e6, 170e6)+text.size$width/2,
           y0=c(0.4, 0.2)-text.size$height/2, y1=c(0.4, 0.2)+text.size$height/2, data.panel=2)

    
}
