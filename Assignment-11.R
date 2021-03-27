
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier (x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i]) } 
  return (outlier.vec)}  #changed line
debug(tukey_multiple)
y<- as.matrix(1:100, nrow=5) #matrix for testing
tukey_multiple(y)
undebug(tukey_multiple)
quartiles <- function (a) 
{
  Q1<- quantile(a,0.25,names=FALSE)
  Q3<- quantile (a, 0.75, names=FALSE)
  quartiles <- c(First=Q1, Third= Q3, IQR = Q3-Q1)
  return (quartiles)
}
tukey.outlier <- function (b)
{
  quartiles <- quartiles (b)
  Belowthreshold <- quartiles[1]-1.5*quartiles[3]
  Upperthreshold <- quartiles [2] + 1.5*quartiles[3] 
  Outliers <- ((b<Belowthreshold)| (b> Upperthreshold))
  return(Outliers)
}
debug(quartiles) #debugging for quartile function
quartiles(y)
undebug(quartiles)
debug(tukey.outlier) #debugging for tukey.outlier function
tukey.outlier(y)
undebug(tukey.outlier)
debug(tukey_multiple)
tukey_multiple(y)
undebug(tukey_multiple)