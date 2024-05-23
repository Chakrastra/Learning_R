##Switch case

#switch(expression,case1,case2,case3,case4,........)

#Index based
x<-switch(3,"Sunday","Monday","Tuesday","Wednesday","Thursday",
          "Friday","Saturday")
x

#Matching Based

y<-3
x<-switch(y,
          "1"="Sunday",
          "2"="Monday",
          "3"="Tuesday",
          "4"="Wednesday",
          "5"="Thursday",
          "6"="Friday",
          "7"="Saturday")
x






