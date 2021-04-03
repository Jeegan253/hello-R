library(aod)
infer<-infert
infer$infert<-as.factor(infer$case)
infer$par<-as.factor(infer$parity)
infer$induab<-as.factor(infer$induced)
infer$sponab<-as.factor(infer$spontaneous)
summary(infer)
counts1 <- table(infer$induab, infer$infert)
barplot(counts1, main= "Infertility in Induced abortion" 
        ,xlab ="Infertility", col=c("light green", "light yellow","light blue"), 
        legend=rownames(counts1))
counts2 <- table(infer$sponab, infer$infert)
barplot(counts2, main= "Infertility in Spontaneous abortion" 
        ,xlab ="Infertility", col=c("light green", "light yellow","light blue"), 
        legend=rownames(counts2))
logmodel <- glm(infert ~ age + education + par + induab + sponab,data=infer, family="binomial")
summary(logmodel)
confint(logmodel)
wald.test(b=coef(logmodel), Sigma= vcov(logmodel), Terms=4:6)
oddsratio<-exp(cbind(OR=coef(logmodel), confint(logmodel)))
oddsratio
