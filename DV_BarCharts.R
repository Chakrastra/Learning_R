# Bar charts 

#A bar chart is a pictorial representation in which numerical
#values of variables are represented by length or height of lines
#or rectangles of equal width. A bar chart is used for summarizing
#a set of categorical data. In bar chart, the data is shown through
#rectangular bars having the length of the bar proportional to the
#value of the variable.

#syntax: barplot(h,x,y,main, names.arg,col)

#Parameter Description
#1. H A vector or matrix which contains numeric values used in the bar 
#2. xlab A label for the x-axis.
#3. ylab A label for the y-axis.
#4. main A title of the bar chart.
#5. names.arg A vector of names that appear under each bar.
#6. col It is used to give colors to the bars in the graph.

library("graphics")

H1<-c(12,35,54,31,41)
barplot(H1)

H2<-c(12,35,54,31,41)
M2<-c("Feb","Mar","Apr","May","Jun")
barplot(H2,names.arg = M2,xlab = "Month",ylab = "Revenue",col = "yellow",
        main = "Revenue Bar chart",border = "red")

# Group Bar Charts & Stacked Bar charts

months<-c("Jan","Feb","Mar","Apr","May")
regions<-c("West","North","South")
values<-matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16), nrow=3,ncol=5,byrow=TRUE)
barplot(values,main = "Total Revenue", names.arg = months,
        xlab="Month",ylab = "Revenue",
        col =c("red","blue","green"))
legend("topright",regions,cex = 0.6 ,fill = c("red","blue","green"))
