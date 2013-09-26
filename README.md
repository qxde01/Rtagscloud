Rtagscloud
==========

Plot a word cloud with javascript and swf.
>#### Install
```
library("devtools")
install_github("Rtagscloud","qxde01")
```
>#### Example
```
library(Rtagscloud)
data(doubanOnlineTags)
x<-doubanOnlineTags[1:50,]
tagscloud(tag=x[,1],url=x[,2],freq=x[,3])
## https://github.com/qxde01/Rtagscloud/blob/master/inst/template/tagscloud.html
```