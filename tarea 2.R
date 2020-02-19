library(plyr)
accidentes <- c(0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,9,1,1,3,4)
accidentes <- count(accidentes)
accidentes

(accidentes$freq/sum(accidentes$freq)*100)
accidentes$rf <- accidentes$freq/sum(accidentes$freq)*100

barplot(accidentes$freq, names.arg = accidentes$x, main = "accidentes en el aserradero" , col = "red")
