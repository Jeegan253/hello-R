#Question-1
A<- matrix(c(2,0,1,3), ncol=2)
B<- matrix(c(5,2,3,-1), ncol=2)
A
B
R1a<- A+B
R1b<- A-B
R1a
R1b
#Question-2
C<- c(4,1,2,3)
R2<- diag(C)
R2
diag(R2)
#Question-3
R3a<- diag(3,5)
R3a
b<- matrix(0, ncol=5, nrow=4)
c<- matrix(0, nrow=5, ncol=4)
b
c
X<- c(0,2,2,2,2)
Y<- c(0,1,1,1,1)
x<- matrix(X, nrow=5)
y<- matrix(Y, ncol=5)
x
y
R3b<- rbind(y,b)
R3c<- cbind(x,c)
R3b
R3c
R3<-R3a+R3b+R3c
R3
