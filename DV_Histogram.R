# Histogram

#A histogram is a type of bar chart which shows the frequency
#the number of values which are compared with a set of values
#The histogram is used for the distribution, whereas a bar chart
#used for comparing different entities. In the histogram,
#each bar represents the height of the number of values present
#in the given range.


#For creating a histogram, R provides hist() function.
#syntax: hist(v,main,xlab,ylab, xlim, ylim, breaks,col, border)
# Parameter Description
#v : It is a vector that contains numeric values.
#main :  It indicates the title of the chart.
#col: It is used to set the color of the bars.
#border :  It is used to set the border color of each bar.
#xlab : It is used to describe the x-axis.
#ylab :It is used to describe the y-axis.
#xlim :It is used to specify the range of values on the x-axis.
#ylim :It is used to specify the range of values on the y-axis.
#breaks: It is used to mention the width of each bar.
library("graphics")
v<-c(12,24,16,38,21,13,55,17,39,10,60,59,58)
hist(v,xlab="Weight",ylab="Frequency",col="green",border="red")

#Use of xlim & ylim parameter

hist(v,xlab="Weight",ylab="Frequency",col="blue",
     border = "black",xlim = c(0,40),ylim = c(0,3),
     breaks = 5)
