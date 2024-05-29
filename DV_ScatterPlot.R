# Scatterplots
# The scatter plots are used to compare variables.

# A comparison between variables is required when we need to
# define how much one variable is affected by another variable.
# In a scatterplot, the data is represented as a collection of
# points. Each point on the scatterplot defines the values of
# the two variables. One variable is selected for the vertical
# axis and other for the horizontal axis.

# In R, there are two ways of creating scatterplot, i.e.,
# using plot() function and using the ggplot2 packages functions.

#Syntax: plot(x, y, main, xlab, ylab, xlim,ylim,axes)

#X: This parameter represents the dataset whose values serve as the horizontal coordinates 
#on the graph.
#y: It corresponds to the dataset whose values determine the vertical coordinates.
#main: The title of the graph.
#xlab: The label for the horizontal axis.
#ylab: The label for the vertical axis.
#xlim: Specifies the limits of the x-values used for plotting.
#ylim: Indicates the limits of values for the y-axis used for plotting.
#axes: Determines whether both axes should be drawn on the plot.

View(mtcars) #mtcars is a R predefined Data set
dim(mtcars)
names(mtcars)
#fetch 2 columns from mtcars
data<- mtcars[,c('wt','mpg')]
View(data)

#plotting cars from chart for cars with weight
#between 2.5 to 5 and mileage between 15 and 30

plot(x=data$wt,y=data$mpg,xlab = "Weight",ylab = "Mileage",
     xlim=c(2.5,5),ylim = c(15,30),
     main = "Weight v/s Mileage")

#scatter plot using ggplot package
library("ggplot2")

# the ggplot2 package provides ggplot() and geom_plot()
# for creating a scatterplot. the ggplot() takes a series of the
# input item. the first parameter is an input vector and the 2nd 
# is the aes() in which we add the x axis and y axis.

#plotting using ggplot and geom_point
ggplot(mtcars,aes(x = drat,y= mpg))+geom_point()

#The aes() inside the geom_point() controls the
#color of th group

ggplot(mtcars,aes(x=drat,y=mpg))+geom_point(aes(color=factor(gear)))

names(mtcars)


