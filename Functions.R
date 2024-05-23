#R function
#fun_name<-function(arg1,arg2,.........){}

new.function<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function()

new.function1<-function(x,y,z){
  res<-x+y+z
  print(res)
}
new.function1(4,5,6)

new.function1<-function(x=0,y=0,z=0){
  res<-x+y+z
  print(res)
}
new.function1(100,100,658)
