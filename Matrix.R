#Matrix in R 
#its a proper two dimensional data set 
#matrix(data,nrow,ncol,byrow,dim_name)

mat<-matrix(c(2:17),nrow = 4,byrow = TRUE)
print(mat)
mat<-matrix(c(2:15),nrow = 4,byrow = TRUE)#Data is not sufficient
print(mat)

mat<-matrix(c(2,5,6,8,7,4),nrow = 2,ncol=3,byrow = TRUE)
print(mat)
mat<-matrix(c(2,5,6,8,7,4),nrow = 2,ncol=3,byrow = FALSE)
print(mat)
mat<-matrix(c(2,5,6,8,7,4),nrow = 3,ncol=2,byrow = FALSE)
print(mat)

x<-matrix(c(5:16),nrow = 4,byrow = TRUE)
y<-matrix(c(7:18),nrow = 4,byrow = FALSE)                                 
x
y
row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18),nrow=4,byrow = TRUE,dimnames = list(row_name,col_name))
z

print(z[3,1])
print(z[4,3])
print(z[2])
print(z[2,])
print(z[,2])
z

z[4,3]<-0
z
z[z==11]<-0
z
z[z>15]<-0
z

#to add matrix row & col we use cbind() and rbind() respectively
z
rbind(z,c(2,3,4))#it actually add them as temporary row 
z#there will be no changes in z
cbind(z,c(8,5,2,0)) # same for cbind()
z
t(z) #transpose

a1<-matrix(c(5:16),nrow = 4,ncol = 3,byrow = TRUE)
a1
a2<-matrix(c(1:12),nrow = 4,ncol = 3,byrow = TRUE)
a2
sum<-a1+a2
sum
sub<-a1-a2
sub
mul<-a1*a2
mul
div<-a1/a2
div
