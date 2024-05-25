install.packages("dplyr")
library("dplyr")

install.packages("magrittr")
library("magrittr")

any(grepl("magrittr",installed.packages()))

test<-read.csv("customers.csv")
View(test)
tests(test)
selfinfo<- select(test,First.test,Last.test,Company)
View(selfinfo)
#Pipe operator: %>%
#dplyr imports this operator from another package (magrittr).
#This operator allows you to pipe the output from one function to
#the input of another function. Instead of nesting functions
#(reading from the inside to the outside),
#the idea of of piping is to read the functions from left to right.

test %>% select(Customer.Id,Sales) %>% head

head(select(test,Customer.Id,Sales))
tail(select(test,Customer.Id,Spend,Sales))
test %>% select(Customer.Id,Spend,Sales) %>% tail
##head %>% select (test,Customer.Id,Spend,Sales) %>% test not 
#valid because to perform we need a data frame first

#Arrange or re-order rows using arrange()
#To arrange (or re-order) rows by a particular column such as
#the alphabetical order, list the test of the column you want to
#arrange the rows by
test1<- test %>% arrange (First.test) %>% head
View(test1)

#Now, we will select three columns from test, arrange the
#rows by the alphabetical order and then arrange the rows by Sales.
#Finally show the head of the final data frame
test%>%select(Company,Sales,Spend)%>%arrange(Company,Sales,Spend)%>%head


#Same as above, except here we filter the rows for Company
#whose Sales are More then 40000 and Spend is less then 40000.
test%>%select(Company,Sales,Spend)%>%
  arrange(Company,Sales,Spend)%>%
  filter(Sales>40000&Spend<40000)

#mutate()
#creating new columns using mutate()
#The mutate() function will add new columns to the data frame.
#Creating a new column called %Saving which is the percentage
#of total saving
names(test)
test<-test%>% 
  mutate(Total_saving = (Savings/Sales)*100) %>%
  arrange(Company)
names(test)
View(test)

#Group By
#The group_by function is used to group data by one or more 
#variables

names(test)
t1<-group_by(test,Company,First.Name)%>%head
View(t1)
View(test)




