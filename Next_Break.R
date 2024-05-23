# next and break

x<-1:10

for(var in x){
  if(var==5){
    next
  }
  print(var)
}

a<-1
repeat{
  print("Hello R")
  if(a>5)
    break
  
  a<-a+1
}

