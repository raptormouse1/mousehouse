A<-matrix(1:100, nrow=6)
# Won't work. nrow must be divisible by 100
A<-matrix(1:100, nrow=10)
B<-matrix(1:1000, nrow=10)
A%*%B
#does matrix multiplication
B%*%A
#won't work because inside numbers don't match (see blog notes)
solve(A)
#won't work because 'system is exactly singular'
det(A)
#gives determinant of 0, which means that's why there's no inverse. you can't divide by 0
solve(B)
#won't work. it's still not a square
det(B)
#still won't work for same reason