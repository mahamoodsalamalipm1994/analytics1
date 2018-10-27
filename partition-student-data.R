#split students into 2 parts with 40% -train, 60% -test
sname = paste('student', 1:100, sep=' ')
gender = sample(c('M','F'), size=100, prob = c(.6,.4), replace = T)
gender
table(gender)
marks = sample(50:100,size=100,replace = T)
marks
?sample
gender; marks; sname  
std = data.frame(sname,gender,marks)
(nrow(std))
indexnos = sample(nrow(std), size=nrow(std)*.4)
indexnos
train= std[indexnos,]
test= std[-indexnos,]

train 
test

#second method to split
#using caTools
library(caTools)
n=sample.split(std,SplitRatio = 0.4 ,group = NULL)
std[n,]
std[-n,]

#3rd method
#using caret
library(caret)
table(std$gender)
prop.table(table(std$gender))
(index3=createDataPartition(y=std$gender,p=.7,list=F))
length(index)
(train3=std[index3,])
(test3=std[-index3,])
(t3a=table(std$gender)); prop.table(t3a)
(t3b=table(std$gender)); prop.table(t3b)
