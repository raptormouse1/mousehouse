A <- matrix(c(2,0,1,3), ncol = 2)
#create matrix A with 2 columns
B <- matrix(c(5,2,4,-1), ncol = 2)
#create matrix B with 2 columns
A+B
#add matrices A and B together
A-B
#subract matrix B from matrix A
diag(x=c(4,1,2,3),ncol = 4,nrow=4)
#create diagonal 4x4 matrix with values 4,1,2,3
F<- diag(x=3,ncol = 4,nrow=4)
#create 4x4 diagonal matrix with value 3
cbind(c(3,2,2,2,2),rbind(1,F))
#column bind c(values for column 1) with a row bind of value 1 for the rest of row 1, all of these added to matrix F.