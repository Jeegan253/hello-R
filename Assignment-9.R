Dsmoker<- read.csv(file.choose(), header=T)
Dsmoker
#plotting number of CAD deaths
plot(Dsmoker$y, col="green", type="o", ylab= "Number of CAD Deaths", main="Number of deaths due to CAD")
layout_matrix <- matrix(1:2, ncol=2)
layout_matrix
layout(layout_matrix)
#using boxplot for 2 categorical variables
boxplot(Dsmoker$y~Dsmoker$smoke, col="red", xlab= "Smoke", ylab="Number of CAD Deaths", main="CAD Deaths by Smoking Status")
boxplot(Dsmoker$y~Dsmoker$age, col="blue", xlab = "Age group", ylab= "Number of Deaths attributed to CAD", main="Number of CAD deaths in doctors by age")
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
plots3 <- xyplot(y~ns, data=Dsmoker,
                 grid=FALSE,
                 type=c("p", "r"), col.line="brown", lwd=3)
print(plots1)
print(plots2)
print(plots3)
install.packages("ggplot2")
library(ggplot2)
linearR <- lm(y ~ age+smoke, data = Dsmoker)
Dsmoker$predicted<- predict(linearR)
Dsmoker$residuals <- residuals(linearR)
ggplot(Dsmoker,aes(x=age+smoke,y=y))+ geom_smooth(method="lm", se=FALSE, color="brown")+ #making a linear regression line
  geom_segment(aes(xend=age + smoke, yend=predicted), alpha=.2) +
 geom_point (aes(color=abs(residuals), size=abs(residuals))) + 
  scale_color_continuous(low="blue", high="red")+   #points are color based on the size of residuals
  guides(color=FALSE, size=FALSE) +               
  geom_point(aes(y=predicted), shape=1)+
  theme_bw()
plot(linearR, which = 1,col=c("brown"))   #residuals vs fitted line for determining linear relationship



