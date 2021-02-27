library(datasets)  # loading dataset
install.packages("pryr") #installing and loading pryr package
library(pryr)
typeof(esoph)
esoph 
otype(esoph)   #type of object of dataset esoph
isS4(esoph)
oesoph<-unclass(esoph)  #unclass esoph
oesoph
class(oesoph)<- "eso"
attributes(oesoph)
print.eso<- function(oesoph) {cat("age group",oesoph$agegp, "\n") #assigning S3 generic function print to the dataset
  cat("alcohol group", oesoph$alcgp, "\n")
  cat("tobacco group", oesoph$tobgp, "\n")
  cat("cases", oesoph$ncases, "\n")
  cat("controls", oesoph$ncontrols, "\n")}
otype(oesoph)#type of object
oesoph #using new function print.eso
linear<- lm(esoph$ncases~esoph$agegp+esoph$alcgp+esoph$tobgp) #A s3 function linear regression on S3 object
summary(linear)
class(linear)
otype(linear)
esop<- list(agegp= 1, alcgp=2, tobgp=4, ncases=4, ncontrols=5)
class(esop)<- "eso"              #assigning S3 to esop dataset
otype(esop)  
#assigning esoph(a s3 object) to S4 object
A<- function(x) {setClass("eso", representation(agegp="numeric", alcgp="numeric", tobgp="numeric", ncases="numeric", ncontrols="numeric"))
  new("eso", agegp=esoph$agegp, alcgp=esoph$alcgp, tobgp=esoph$tobgp, ncases=esoph$ncases, ncontrols=esoph$ncontrols)}
B<- A(esoph)
isS4(B)
typeof(B)
otype(B)
show(B)   #S4 generic function 
print(B)  #s3 generic function giving error. 
esoph$ncases
esoph$ncontrols
B@ncases
B@ncontrols