setwd("/Users/jeegs/Downloads/Intro to R")
Ass8 <- read.table(file.choose(), header=T, sep=",")   #reading "Assignment 6 Dataset" into Ass8 dataframe. 
Ass8
install.packages("pryr")  #installing pryr and plyr packages
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)
Avggrades <- ddply(Ass8, "Sex", transform, Grade.avgbysex = mean(Grade))   #plyr package to create a loop for mean(grade) based on sex
Avggrades
#write.table(Avggrades, "Average grades", sep=",")
#gradesavg<- read.table("Average grades", header=T, sep=",")
#gradesavg
Semgrades <- subset(Avggrades, grepl("[i]", Avggrades$Name, ignore.case=T))
Semgrades
write.table(Semgrades, "Studentgrades.csv", sep=",")
Studentgrades <- read.csv (file.choose(), header=T)
Studentgrades
