#R Data Frame:
#A data frame is an array. Unlike an array,
#the data we store in the columns of the data frame can
#be of various types.
#A data frame is a two-dimensional array-like structure or
#a table in which a column contains values of one variable,
#and rows contains one set of values from each column.
#A data frame is a special case of the list in which each
#component has equal length.

# to create Data frame
# frame() 

emp.data<-data.frame(
  employee_id=c(1:5),
  employee_name = c("ram","mohan","sohan","rohan","hitesh"),
  sal = c(523.3,913.2,641.0,529.0,453.25),
  
  starting_date = as.Date(c("2012-01-01","2013-09-23",
                            "2014-11-15","2014-05-11",
                            "2015-03-27")),
  stringsAsFactors = FALSE 
)
# Printing the data frame
print(emp.data)
str(emp.data) # it gives the overall structure of
              #Data frame
#extracting particular column
f1<-data.frame(emp.data$employee_name,emp.data$sal)
print(f1)
#extracting particular Row
f2<-emp.data[2,]
print(f2)                                    
f2<-emp.data[3:5,]
print(f2)                                    
#Combination
f3<-emp.data[c(2,3),c(1,4)] 
f3
f3<-emp.data[c(2,3)]#both columns
f3
f3<-emp.data[2,3] #it go to that index
f3
#Modification in DF
#cbind(),rbind()
x<-list(6,"manish",420.45,"2014-05-08")
x
rbind(emp.data,x)
y<-c("jodhpur","jaipur","ajmer","bikaner","kota")
y
cbind(emp.data,Address=y)
print(emp.data)

emp.data<-emp.data[-2,] #to delete row
emp.data
emp.data$starting_date<-NULL #to delete col
emp.data
print(summary(emp.data)) #statics of Data
