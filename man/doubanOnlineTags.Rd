\name{doubanOnlineTags}
\alias{doubanOnlineTags}
\docType{data}
\title{
douban Online activities' tags
}
\description{
douban Online activities' tags(2013-09-26),you can browse at http://www.douban.com/online/tag/.
}
\usage{data(doubanOnlineTags)}
\format{
  A data frame with 1999 observations on the following 3 variables.
  \describe{
    \item{\code{tag}}{a character vector}
    \item{\code{url}}{a numeric vector}
    \item{\code{freq}}{a character vector}
  }
}
\details{
you can Crawl the data by package Rdouban:
\code{Rdouban:get_online_tag(results=2000,count=200)}
}

\examples{
  data(doubanOnlineTags)
}
\keyword{datasets}
