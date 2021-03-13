Dsmoker<- read.csv(file.choose(), header=T)
Dsmoker
Dsmoker$smoke<- factor(Dsmoker$smoke)
#plotting number of CAD deaths
plot(Dsmoker$y, col="lightgrey", type="o",  ylab= "Number of CAD Deaths", main="Number of deaths due to CAD")
layout_matrix <- matrix(1:2, ncol=2)
layout_matrix
layout(layout_matrix)
plot(Dsmoker$smoke,Dsmoker$y, col="red", type="o", xlab= "Smoke", ylab= "Number of CAD Deaths", main="Number of CAD deaths by smoking status")
boxplot(Dsmoker$y~Dsmoker$age, col="blue", xlab= "Age group", ylab= "Number of CAD Deaths", main="Number of CAD deaths by age group")
layout_matrix1 <- matrix(1:1, ncol=1)
layout_matrix
layout(layout_matrix1)
install.packages("lattice")
library(lattice)
#plotting CAD deaths with combination of smoking and number of person years using Lattice 
plots1 <- xyplot(y~ns, data=Dsmoker,
         grid=FALSE,
         group=age)
plots2 <- xyplot(y~age, data=Dsmoker,
                 grid=FALSE,
                 type=c("p", "r"), col.line="brown", lwd=3)
plots3 <- xyplot(y~smoke, data=Dsmoker,
                 grid=FALSE,
                 type=c("p", "r"), col.line="brown", lwd=3)
print(plots1)
print(plots2)
print(plots3)
install.packages("ggplot2")
library(ggplot2)
linearR <- lm(y ~ smoke + age, data = Dsmoker)
Dsmoker$predicted<- predict(linearR)
Dsmoker$residuals <- residuals(linearR)
ggplot(Dsmoker,aes(x= age,y=y))+ geom_smooth(method="lm", se=FALSE, color="brown")+ #making a linear regression line
  geom_segment(aes(xend= age, yend=predicted), alpha=.2) +
  geom_point (aes(color=abs(residuals), size=abs(residuals))) + 
  scale_color_continuous(low="blue", high="red")+   #points are color based on the size of residuals
  guides(color=FALSE, size=FALSE) +               
  geom_point(aes(y=predicted), shape=1)+
  theme_bw()
ggplot(Dsmoker,aes(x= smoke,y=y))+ geom_smooth(method="lm", se=FALSE, color="brown")+ #making a linear regression line
  geom_segment(aes(xend= smoke, yend=predicted), alpha=.2) +
 geom_point (aes(color=abs(residuals), size=abs(residuals))) + 
  scale_color_continuous(low="blue", high="red")+   #points are color based on the size of residuals
  guides(color=FALSE, size=FALSE) +               
  geom_point(aes(y=predicted), shape=1)+
  theme_bw()
plot(linearR, which = 1,col=c("brown"))   #residuals vs fitted line for determining linear relationship
plot(linearR, which = 2,col=c("brown"))   #residuals vs fitted line for determining linear relationship
summary(linearR)



