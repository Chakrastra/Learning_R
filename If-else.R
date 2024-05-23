# if else statement

x<-25L
if(is.integer(x)){
  print("x is Integer")
}
x<-25
if(is.integer(x)){
  print("x is Integer")
}else # else should start from right after the end-scope of if
{
  print("x is not an Integer")
}

y<-c("Hardwork","Is","Key", "To","Success")
y
if("Key" %in%y){
  print("Found")
}else{
  print("Not found")
}