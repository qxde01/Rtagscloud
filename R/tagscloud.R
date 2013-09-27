tagscloud<-function(tag,url=NULL,freq,fontSize=c(1,5),filename="tagscloud",
                    color='#00ff00',speed=50, width=600, height=600){
  .weightFreq<-function(x,fontSize=fontSize){
    minF<-min(x)
    maxF<-max(x)
    x<-(x-minF)*(fontSize[2]-fontSize[1])/(maxF-minF)+fontSize[1]
    return(x)
  }
  f<-.weightFreq(x=as.integer(freq),fontSize)
  if(is.null(url))url<-rep(0,length(tag))
  mat<-as.matrix(cbind(as.character(tag),as.character(url),f))
  colnames(mat)<-NULL
  json<-toJSON(mat)
  
  html<-readLines(system.file("template", "tagcloud_template.html", 
                              package="Rtagscloud"),encoding="UTF-8")
  
  if(color!='#00ff00'|speed!=50|width!=600|height!=600){
    html[grep("vis.draw",html)]<-paste("vis.draw(data, {text_color:'",color,"',speed: ",speed,
          ",width:",width,", height:", height,"});")
  }
  
  html[grep("var json_data = %s",html)]<-paste('var json_data =',json,';')
  filename<-paste0(filename,".html")
  con <- file(filename, open="w+b", encoding="UTF-8")
  writeLines(html, con , sep = "\n", useBytes = FALSE)
  close(con)
  browseURL(paste0("file://",getwd(),"/",filename))
  cat("\n The tagscloud html file is:",paste0(getwd(),"/",filename),"\n")  
}
