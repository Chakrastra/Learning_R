# Some built-in functions in R

x<- -5
print(abs(x))
x<-abs(x)
x<-7.4
print(sqrt(x))
print(ceiling(x))
print(floor(x))


y<-c(1.5,5.6,8.6)
print(trunc(y))

z<-5
print(sin(z))
print(log(z))
print(exp(z))

a<-"123csdfgfrg456789"
substr(a,3,8)
print(toupper(a))
print(tolower(a))

s1<-c("abcd","bcbd","abcdbcbd")
pat<-"^abc"
print(grep(pat,s1))

a1<-c(0:10,40)
a1
su<-sum(a1)
su
print(max(a1))
print(min(a1))
