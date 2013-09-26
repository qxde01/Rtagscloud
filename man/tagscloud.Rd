\name{tagscloud}
\alias{tagscloud}

\title{
 Plot a word cloud with javascript and swf
}
\description{
 Plot a word cloud with javascript and swf.
}
\usage{
tagscloud(tag,url=NULL,freq,fontSize=c(1,5),filename="tagscloud",
          color='#00ff00',speed=50, width=600, height=600)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag,url,freq}{\code{url} is the \code{tag}'s URLs,\code{freq} is the         \code{tag}'s  word Frequency,\code{url} can be can be ignored(NULL).}
  \item{fontSize}{tag's font size range.}
  \item{filename}{HTML file's name.}
  \item{color}{tag's font color,such as '#00ff00','#FF0000FF'.}
  \item{speed}{tag's rotation speed.}
  \item{width,height}{the flash 's size.}
}
\details{
 The tagscloud's template is from \link{https://github.com/ptwobrussell/Mining-the-Social-Web/tree/master/web_code/wp_cumulus}.
}
\value{
  a html file with tags cloud.
}
\references{
https://github.com/ptwobrussell/Mining-the-Social-Web
http://wordpress.org/plugins/wp-cumulus/
}
\author{
qxde01<\email{qxde01@gmail.com}>
}
\seealso{
 \code{\link{wordcloud}}
}
\examples{
data(doubanOnlineTags)
x<-doubanOnlineTags[1:50,]
tagscloud(tag=x[,1],url=x[,2],freq=x[,3])
}

\keyword{ tagscloud }
\keyword{ wordcloud }
