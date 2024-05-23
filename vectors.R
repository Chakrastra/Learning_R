# Data structure in R
# vectors,Matrix,Array,List,Data Frame

# Vectors in R
##elements of vectors are known as components 
# length(): no of components
# implementation: atomic vector and List

#how to create
a<-c(3,5,6,42,3,5,4) #using c function
a
b<- -3:5 #in the form of range using colon
b
sq<-seq(1,100) # using sequence
sq
sq<-seq(1,100,10) # 10 is gaping between
sq

#numeric vector
numv<-c(12.3,4.5,6.787,564)
numv
class(numv) #numeric
#integer vector
intv<-c(12L,34L,54L,56L)
intv
class(intv)
#character vector
charv<-c(1,2,34,5,6,4)
class(charv)
charv<-as.character(charv)
charv
class(charv)
#logical Vector
logv<-c(1,2,3,4,4)
class(logv)
logv<-as.logical(logv)
class(logv)
logv

#Accessing elements of vector
#in R programming Indexing start from 1 not 0 
#we use []
sq
sq[3]
char_vec<-c("ram"=12,"shayam"=32,"mohan"=31)
char_vec
char_vec["shayam"] #only can be accessed using char key
a1<-c(1,2,3,4,5,6,7)
a1[c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE)]

#Vector Operations

a1<-c(1,2,3,4,5,6,7)
a2<-c("ram","shayam","mohan","Soham")
a3<-c(a1,a2)
a3
a1<-c(1,2,3,4,5,6,7)
a4<-c(5,6,7,8,1,2,4)
a1+a4
a1-a4
a1/a4
a1*a4
a2<-c("ram","shayam","mohan","Soham")
a2[3]
a2[7]
a2[-2] # it will exclude abs(-2) element
a2[c(2,3,2)]
a2[c(2,3,2,1,4)]

#naming of Vector
z<-c("ram","mohan","sohan")
z
names(z)=c("y1","y2","y3")
z
z["y1"]
