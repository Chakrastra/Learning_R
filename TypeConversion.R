##Conversion between datatypes
num1<-24L
class(num1)
num1<-as.numeric(24L)
class(num1)
num2<-as.numeric(25-56i)
class(num2)
print(num2)
num3<-as.numeric(TRUE)
num3
num4<-as.numeric("GeeksForGeeks")
num4
num5<-as.numeric("12345")
num5

int1<-as.integer(52.6544)
int1
int2<-as.integer(45-456i)
int2
int3<-as.integer(TRUE)
int3
int4<-as.integer("Geeksforgeeks")
int4
int5<-as.integer("12345")
int5

comp1<-as.complex(563.345)
comp1
comp2<-as.complex(563L)
comp2
comp3<-as.complex(FALSE)
comp3
comp4<-as.complex("1234")
comp4
comp5<-as.complex("Geeksforgeek")
comp5

log1<-as.logical(0.0000)
log1
log2<-as.logical("0.0000")
log2
log2<-as.logical("TRUE")
log2
log3<-as.logical(0L)
log3

char1<-as.character(453.34)
char1
char2<-as.character(34L)
char2
char3<-as.character(TRUE)
char3

