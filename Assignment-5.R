A<- matrix(1:100, nrow=10) #creating matrix A
B<- matrix(1:1000, nrow=10) # creating matrix B
a<- t(A) #transpose A matrix 
b<- t(B) #transpose B matrix
a # 10 x 10
b #100 x 10
va <- A[6,] #vector a from matrix A
vb <- B[9,] # vector b from matrix B
va
vb
m <- va*A #multiplying matrix A with vector a
n <- vb*B #multiplying matrix B with vector b
m # 10 x 10
n # 100 x 10

va<- matrix(1:10, nrow=10)  #vector in matrix form with same rows as columns in matrix m
vb<- matrix(1:100, nrow=100)  # vector in matrix form with same rows as columns in matrix n
X<- m%*%va             #multiplying matrices
Y<- n%*%vb
X
Y
x<- matrix(X[1:9,], nrow=3) #matrix from X
det(x) #determinant of x
solve(x) #inverse of X

y<- matrix(Y[2:10,], ncol=3) #matrix from y
y 
det(y) #determinant of Y
solve(y) #inverse of Y


Z<- matrix(X, nrow=5) #matrix of X with 5 rows
z<- matrix(Y, ncol=5) #matrix of Y with 5 columns
Z
z
W <-z%*%Z    #multiplying matrices z and Z
det(W) #determinant of W
solve(W) #inverse of W

x%*%solve(x)
solve(W) %*% W