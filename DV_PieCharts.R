#R Data visualization

#To learn Data visualization the best is to make projects on it.

#Data visualization is an efficient technique for gaining insight
#about data through a visual medium. with the help of visualization
#techniques, a human can easily obtain information about hidden
#patterns in data that might be neglected.

# Pie Charts
#pie-chart is a representation of values in the form of slices
#of a circle with different colors.
#The Pie charts are created with the help of pie () function,
#which takes positive numbers as vector input.

# Syntax: pie(x,Labels, Radius, Main, Col,Clockwise)
#Here,
#x is a vector that contains the numeric values used in the pie chart.
#Labels are used to give the description to the slices.
#Radius describes the radius of the pie chart.
#Main describes the title of the chart.
#col defines the color palette.
#clockwise is a logical value that indicates the clockwise or
#anti-clockwise direction in which slices are drawn.

#Creating Data for the graph.
x<-c(12,35,56,75)
labels<-c("India","UK","Japan","USA")
pie(x,labels)
pie(x,labels,main="Country Pie Chart",col = rainbow(length(x)))
colors<-c("blue","green","red","orange")
pie(x,labels,main = "Country Pie Chart",col=colors)

#slice Percentage & chart legend

#legend(x,y=NULL,legend,fill,col,bg)
#Here,
#x and y are the coordinates to be used to position the legend.
#legend is the text of legend
#fill is the color to use for filling the boxes beside the legend text
#col defines the color of line and points besides the legend text.
#bg is the background color for the legend box.

legend("topright", c("India","UK","Japan","USA"),cex = 0.8,
       fill = colors)

# 3D Pie Chart

#R provides a plotrix package whose pie3D() function
#is used to create an attractive 3D pie chart. The 
#parameters of pie3D() function remain same as pie() function

library(plotrix)
x2 <- c(20, 65, 15, 50,45)
labels2 <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")
pie3D(x2, labelslabels=labels2, explode = 0.2, main = "country Pie Char")

x1 <- c(20, 65, 15, 50,45)
labels1 <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")
pie_percent<- round(100*x1/sum(x1), 1)
labels1<-paste(labels1,pie_percent,"%", sep = " ")
pie3D(x1, labels = labels1, main = "Country Pie Chart",
      col = rainbow(length(x1)), labelcex = 0.8)

legend(x=-1,y=1, legend = labels1, cex = 0.8, fill = rainbow(length(x1)), bty = "n")






