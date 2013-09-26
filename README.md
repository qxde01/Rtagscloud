Rtagscloud
==========

Plot a word cloud with javascript and swf.
>#### Install
```
library("devtools")
install_github("Rdouban","qxde01")
```
>#### Example
```
library(Rtagscloud)
data(doubanOnlineTags)
x<-doubanOnlineTags[1:50,]
tagscloud(tag=x[,1],url=x[,2],freq=x[,3])
```