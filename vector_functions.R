#vector functions
#rep()
rep(c(2,3,4),time=4)
rep(c(1,4,8),each=3)
rep(c(0,8),time=c(3,4))
rep(1:4,length.out=8)
rep(1:4,length.out=10)

#seq()
seq(from=3.5,to=1.5,by=-0.5)
seq(from=-2.7,to=1.5,length.out=8)
seq(from=-2.7,to=1.5,length.out=10)# it makes fractions according to length

#any() and all()
x<-1:10
any(x>5)#at least one bhi hoga then it will be true
any(x>15)
all(x>5)
all(x>0)

