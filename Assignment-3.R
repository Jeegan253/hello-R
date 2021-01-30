Name<- c("Jeb", "Donald", "Ted", "MArco", "Carly", "Hillary", "Bernie")
ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)
CBS_political_poll_results<- c(12, 75, 43, 19,1, 21, 19)
Poll_results <- cbind (Name, ABC_political_poll_results, CBS_political_poll_results) 
Poll_results
Poll_results.df <- data.frame (Name, ABC_political_poll_results, CBS_political_poll_results)
Poll_results.df
mean(Poll_results)
mean(Poll_results.df)
#Both the mean function resulted in warning message: of argument is not numeric
#or logical
colMeans(Poll_results [,2:3]) 
colMeans(Poll_results.df [,2:3])
#colMeans functions work with only dataframe but not with matrix
ABC<-summary(Poll_results.df$ABC_political_poll_results)
CBS<-summary(Poll_results.df$CBS_political_poll_results)
ABC
CBS
sd(Poll_results.df$ABC_political_poll_results)
sd(Poll_results.df$CBS_political_poll_results)
summary(Poll_results)

