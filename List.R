#List in R
#list()

vec<-c(8,9,4,7,6)
char_vec<-c("shayam" ,"mohan" , "shayam" ,"ram" ,   "Soham")
logic_vec<-c(TRUE,FALSE,TRUE,FALSE,TRUE)
list1<-list(vec,char_vec,logic_vec)
list1
list2<-list("ram","sohan",c(1,2,3,4,5), TRUE, FALSE, 52L, 56.85)
list2

#naming of list
list3<-list(c("ram" , "mohan" ,"Soham"),c(56,89,78),list("btech","Bsc","BA"))
list3
names(list3)<-c("students","marks","courses")
list3
#accessing list
print(list3[1])
print(list3[3])
print(list3["marks"])
print(list3$courses)

# unlist() converts the list into vector
# because we can not perform arithmetic operation on list
list3<-list(5:9)
list3
list4<-list(14:18)
list4
v1<-unlist(list3)
class(v1)
typeof(v1)
v2<-unlist(list4)
res<-v1+v2
list3<-list(5:9)
list3
list4<-list(14:18)
list4
mer<-list(list3,list4)
mer
