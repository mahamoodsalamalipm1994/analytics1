# assign
x1 = 3
x2 <- 3
#print values
x1
x2
# assign and print
(x3=3)
# environment
# variables in env
ls()
?ls()
#datasets available for use
data()
women
?women
?mtcars
mtcars
mtcars$mpg
attach(mtcars)
mpg
?attach
# libraries currently loaded
library()

#elements
ls()
rm(list=ls())
rm(list = ls(all = TRUE))
x1
women
data(mtcars)
#help
?mean
x <- c(0:10, 50)
x
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10)) # trims the extream value
#create value
1:100
seq(0,100,2)
seq(1,10, length.out = 5) # sequence devided into 5 
x = c(0:10,50:100)
x
rep(c(1,4),5) #repetation numbers, number of times
#version of R
version
Sys.Date()   #todays date
getwd()  #working directory
plot(1:10) 
methods(class='matrix')  #methods available for a class of object
?methods
source('test1.R') #Runs an entir r file
