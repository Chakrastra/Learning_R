#Data types in R

#(logical, numeric, integer, complex, char,raw)
num<-10 # default DT is numeric always

#numeric
#numeric is default in the form of double for any number
numeric=cat(12,1314,-24,-25,12,365,-26,456)

#integer
integer<-36L # we have code suffix at the end
             # else it will be considered as numeric

#Complex
complex<- 5+2i
#Logical
#logical=TRUE,FALSE #in this 1 and 0 has no logical significance

# Character
# character ='a',"Hello",'False','2654.34',"Hell out 45678.978",
# Raw datatypes works on byte level 

num<-10
class(num)
typeof(num)

int1<-15
class(int1)
int1<-as.integer(int1)
class(int1)
int2<-15L
class(int2)
int3<-16L
class(int3)

comp<-10-25i
class(comp)
logi<- TRUE
class(logi)

char<-"Geeksforgeeks"
class(char)

