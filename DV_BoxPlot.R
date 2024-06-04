#Box Plot
# A box plot (also known as box and whisker plot) is a type of chart often used in
# explanatory data analysis to visually show the distribution of numerical data and
# skewness through displaying the data quartiles (or percentiles) and
# averages.
# Box plots show the five-number summary of a set of data: including the
# minimum score, first (lower) quartile, median, third (upper) quartile, and
# maximum score.

# R provides a boxplot() function to create a boxplot.
# There is the following syntax of boxplot() function:
#
# Syntax: boxplot(x, data, notch, varwidth, names, main)
#
# Parameter Description
# x       :  It is a vector or a formula.
# data    :  It is the data frame.
# notch   :  It is a logical value set as true to draw a notch.
# varwidth:  It is also a logical value set as true to draw the width
#            of the box same as the sample size.
# names   :  It is the group of labels that will be printed under each boxplot.
# main    :  It is used to give a title to the graph.

names(mtcars)
View(mtcars$hp)
boxplot(mtcars$hp)

boxplot(mtcars$hp,
        main = "mtcars Data Frame",
        xlab = "x",
        ylab = "Y",
        col  = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
  )
# Boxplot form Formula
# The function boxplot() can also take in formulas of the form y~x
# where, y is a numeric vector which is grouped according
# to the value of x.

 boxplot(mpg ~ cyl, data = mtcars, xlab = "Quantity of Cylinders",
         ylab = "Miles Per Gallon",
         main = "R Boxplot Example", col="orange", border="brown")

# Boxplot using notch
# In R we can draw a boxplot using a notch. It helps us to find out
# how the medians of different data groups match with each other.
 
 boxplot(mpg ~ cyl, data = mtcars,
         xlab = "Quantity of Cylinders",
         ylab = "Miles Per Gallon",
         main = "Boxplot Example",
         notch = TRUE,
         varwidth = TRUE,
         col = c("green", "yellow", "red"),
         names = c("High", "Medium", "Low")
 )
 

