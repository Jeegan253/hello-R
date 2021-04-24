Vaccine<- read.csv(choose.files(), header=T)
Vaccine
linearmod = lm(Cases ~ DTP3+DTP4, data=Vaccine)
summary(linearmod)
