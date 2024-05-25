#R Excel file

#installing xlsx package
install.packages("xlsx")

#verifying the package is installed.
any(grepl("xlsx",installed.packages()))

# Loading the library into R workspace.
library("xlsx")

getwd()
excel_data<- read.xlsx("excel_data.xlsx",sheetIndex = 1)
print(excel_data)
View(excel_data)
names(excel_data)
dim(excel_data)
summary(excel_data)
View(excel_data)
max_profit<- max(excel_data$Cost.Price.Total..USD.)
min_profit<- min(excel_data$Cost.Price.Total..USD.)
print(max_profit)
print(min_profit)

details<-subset(excel_data,Product.ID=="P105")
print(details)
a<-subset(excel_data,Cost.Price.Total..USD.==max(Cost.Price.Total..USD.))
print(a)
a<-subset(excel_data,Cost.Price.Total..USD.>=50000)
View(a)
#we can use write.xlsx for writing anything

#Manipulate Data in R with dplyr package
test<-read.csv("customers.csv")
View(test)
head(test)
tail(test)

#verifying the package is installed.
any(grepl("dplyr",installed.packages()))
library("dplyr")
#important dplyr verbs to remember

#select()    select columns
#filter()    filter rows
#arrange()   re-order or re-arrange rows
#mutate()    create new columns
#summarise() summarise values
#group_by()  allows for group operations in the "split-apply-combine" concept

names(test)
selfinfo<- select(test,First.Name,Last.Name,Company)
View(selfinfo)

#To select all the columns except a specific column,
#use the "-" (subtraction) operator (also known as negative indexing)
test1<-select (test,-Last.Name)
View(test1)
head(select(test, -Phone.2))
dim(test1)
dim(test)

#To select a range of columns by name, use the ":" (colon) operator
head(select(test, Index: Company))
#To select all columns that start with the character string "sl",
#use the function starts_with()
head(select(test, starts_with("In")))

#Some additional to select columns based on a specific criteria:

#ends with() = select columns that end with a character string
#contains() = Select columns that contain a character string
#matches() = Select columns that match a regular expression
#one_of() = Select columns names that are from a group of names

#Selecting rows using filter()
#Filter the rows for mammals that sleep a total of more than 16 hours.
names (test)
fix(test)
filter(test, Sales >= 25000)
#Filter the rows for Company that Sales a total of more than
#25000 and spend is more than 16000.
filter(test, Sales >= 25000, Spend>= 16000)

#Filter the rows for Sales in the specific object
View(test)
typeof(test$sales)
test$sales <- as.numeric(test$sales)
names(test)
filter(test,Country %in% c("Poland","United Arab Emirates"))





