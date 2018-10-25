#Analysis of dataset mtcars using dolyr
#filename: dplyr-mtcars.R
#learn to use dplyr 
library(dplyr)

mtcars
#structure of data set
str(mtcars)
dim(mtcars) #dimension
names(mtcars)
rownames(mtcars)
summary(mtcars) #summary of dataset

#summary activities on mtcars
table(mtcars$am) #automatic trasmission/manual
t1=table(mtcars$am)
pie(t1)
pie(t1,labels=c('Auto','Manual'))

table(mtcars$gear)
t2=table(mtcars$gear)
pie(t2,c('3 G','4','5'))
barplot(t2,col=1:3)
barplot(t2,col=c('red','blue','pink'),xlab = 'Gear',ylab = 'No Of Cars',ylim = c(0,20))
title(main = 'Distributon of gear of cars', sub='No of gears')

#using dplyr %>% is chaining function()
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
#select for columns, slice for row 
mtcars %>% arrange(mpg) #ascending order of milage
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg) #ascending order of am, descending order of am, descending order of mpg
?mtcars
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn,mpg) #display row name with mpg
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.2)
mtcars %>% select(sample(x=c(1:11),size=2)) %>% head
sample(x=1:11, size = 2)

mtcars %>% mutate(newmpg = mpg * 1.1) 

# type of Tx ,mean (mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG =mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMPG =mean(mpg),MaxHP=max(hp))
mtcars %>% group_by(am,gear) %>% summarise(MeanMPG =mean(mpg),MaxHP=max(hp))

