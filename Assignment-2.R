assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22) #creating dataset assignment2
assignment <- c(9, 18, 27, 36, 45) #another dataset assignment
mymean <- function(x){return(sum(x)/ length(x))} # creating mean function
mycalc <- function (x,y){return (sum(x)/ length(y))}
mymean (assignment2) # calculating mean of assignment2
mymean (assignment) #calcualting mean of assignment
mycalc (assignment2, assignment)
