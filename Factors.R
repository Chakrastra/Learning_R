#R factor is used to store categorical data as levels. It can store both
#character and integer types of data. These factors are created 
#with the help of factor() functions, by taking a vector as input.

#Factors have labels which are associated with the unique integers
#stored in it. It contains predefined set value known as levels and by
#default R always sorts levels in alphabetical order.

#X :It is the input vector which is to be transformed into a factor.
#levels:It is an input vector that represents a set of unique values
#which are taken by x
#labels:It is a character vector which corresponds to the number of labels.
#Exclude:It is used to specify the value which we want to be excluded,
#ordered:It is a logical attribute which determines if the levels are ordered.
#nmax:It is used to specify the upper bound for the maximum number of level.

dir<-c("north","west","east","south")
is.factor(dir)
factor(dir)
dir<-c("north","west","east","north")
is.factor(dir)
factor(dir)
factor(dir,levels = c("north","west","east","south"), labels = c("N","W","E","S"))
factor(dir) 
factor(dir,levels = c("north","west","east","south"), exclude = c("north"))

#g1() n,k,labels

v1<-gl(3,4,labels = c("ram","mohan","sohan")) #here 3 is number of labels
# 4 is number of copy 
v1
dir<-c("north","west","east","south")
data<-factor(dir)
data
data[4]
data[c(2,4)]
data[-1]
data[2]<-"east"
is.factor()#checks factor
is.ordered()# checks order
as.factor()#converts vector into factor
as.ordered()# arranges in order







