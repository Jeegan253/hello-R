Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
Finaldecision <-c(0,1,0,1,0,1,0,1,1,1)
Ass4 <- data.frame(Freq,BP,First,Second,Finaldecision)
Ass4


layout_matrix <- matrix(1:2, ncol=2)
layout_matrix
layout(layout_matrix)
boxplot(Ass4$Fre, xlab="Frequency", main='Boxplot of Frequency')
hist(Ass4$Freq, xlab = "Frequency", main='Histogram of Frequency')

boxplot(Ass4$BP, xlab="Blood Pressure", main='Boxplot of Blood Pressure' )
hist(Ass4$BP, xlab="Blood Pressure", main='Histogram of Blood Pressure' )

boxplot(Ass4$BP~Ass4$First, ylab="Blood Pressure", xlab= "First Doctor ratings", main='Boxplot of Blood Pressure and first MD rating' )
hist(Ass4$First, breaks=2,  xlab= "First Doctor ratings", main='Histogram of Blood Pressure and first MD rating')

boxplot(Ass4$BP~Ass4$Second, ylab="Blood Pressure", xlab= "Second Doctor ratings", main='Histogram of Blood Pressure and Second MD rating')
hist(Ass4$Second, breaks=2, xlab= "Second Doctor ratings", main='Histogram of Blood Pressure and Second MD rating')

boxplot(Ass4$BP~Ass4$Finaldecision, ylab="Blood Pressure", xlab= "Final rating", main='Boxplot of Blood Pressure and final MD rating')
hist(Ass4$Finaldecision, breaks=2, xlab= "Final Decision", main='Histogram of Blood Pressure and Final MD rating')
