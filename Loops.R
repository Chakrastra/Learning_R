# LOOPS
# for loop

for(y in 1:10){
  print(paste("Number: ",y))       #paste used for concatenation
}
f<-c("orange","apple","banana","grapes","mango")
for(i in f){
  print(f)
}

#Repeat loop

v<-c("hello","how","are","you","?")
x<-2
repeat{
  print(v)
  x<-x+1
  if(x>5)
    break
}

#While Loop
v<-c("hello", "R","programming","language")
x<-2
while(x<6){
  print(v)
  x<-x+1
}