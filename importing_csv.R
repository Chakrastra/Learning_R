#Data importing-csv
#A comma-separated values (csv) file

#-------------------------------------------------------------------------------
getwd() #function to know the current wd

setwd("C:\\Users\\hp\\OneDrive\\Documents\\R_by_W3school")
#function to reset the current wd

#sorting
v<-c(12,34,56,32,35,98,33,57,14,59,13,21)
sort(v)
sort(v, decreasing = T)
v
order(v) #it will print index of that element in sorted vector 

v[order(v)]
v
rank(v) #indexing
v[rank(v)] #indexing

customers<- read.csv("customers.csv")
View(customers)
print(is.data.frame(customers))
print(ncol(customers))
print(nrow(customers))

customers2<-read.csv("u can give path to csv file if that file isnot in cwd")

customers3<-read.table(file="customers.csv",header= T,sep=",")
customers3<-read.table(file="customers.csv",
                       header=TRUE,
                       sep=",",
                       na.strings=c("", "NA"),
                       comment.char="",
                       quote="\"",
                       stringsAsFactors=FALSE)
#- Some of the functions related to the Data frames
View(customers)
fix(customers) #to do fix changes
str(customers) #str(): shows the structure of the data frame
summary(customers) #summary(): provides summary statistics on the columns of the DF
names (customers) # all the variables names
nrow(customers)
ncol (customers)
length(customers) #also ncol
dim(customers) #dim(): shows the dimensions of the data frame by r
colnames(customers) # shows the name of each column in the data frame
head(customers) #shows the first 6 rows of the data frame
tail(customers) #shows the first 6 rows of the data frame

names(customers)
customers3<- customers[c(1:4,11,5:14)] #changing the location of 11th column to 5th
names(customers3)
customers3<- customers[c(1:10),c(1:4)] #get 1st 10 rows and 1st 4 columns
customers3<- customers[c(1:10),]
View(customers3)

names(customers)
grep("Company", colnames(customers))
grep("Email",colnames(customers))

# $ - dollar sign for accessing or mentioning the var name

#created a new var
c1<-customers$Company
c1
names(customers)
View(customers)
customers$Total_saving = ((customers$Salas - customers$Spend)/customers$Salas)*100
View(customers)
View(customers$Total_saving)
# Getting the maximum sales from data frame.
names (customers)
max_sal<- max(customers$Total_saving)
print (max_sal)
#Getting the details of the person who have maximum sales

details<- subset(customers,Total_saving==max(Total_saving))
print(details)
#Getting the details all the 
#persons who are working in the country UAE

names(customers)
details<- subset(customers,Country=="United Arab Emirates")
print(details)

#Getting the details whose Total_saving 
#is greater than 50% and working in the Sri Lanka.
details <- subset (customers, Country=="Sri Lanka"&Total_saving>50)
print(details)

#writing into a csv file
#R also allows us to write into the .csv file.
#For this purpose, R provides a write.csv() function.





