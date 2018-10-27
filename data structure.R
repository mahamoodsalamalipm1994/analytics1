#data structure
#vectors
x=1:10
x
x1 <- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
(x2a = c(2L,4L,5L)) # get integer value
class(x2a)
class(x2) #here the class was numeric
(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a',"mahamood","4"))
class(x3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)
letters[seq(1,26,2)]

#access elements
(x6 = seq(0,100,3))
ls()
x6
length(x6)
x6[20]
x6[seq(1, length(x6),2)]
x6
x6[c(2,4)] #printing numerics in 2nd and 4th position
x6[-1] #print all except first
x6
x6[-c(1:10,15:20)] #except 1-10 &15-20 print all
(x7=c(x6,x2))

#sort
set.seed(123) #same pattern for everytime
(x6=sample(1:20)) #random value from 1-20
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing=T)
rev(x6)
x6
(x=1:10)
x<5 # 1-5 TRUE 6-10 FALSE
x[x<4|x>6]
x[x<4|x>6]=100
x
length(x[x==100]) #number of times 100 in x
y=1:5
y
y[2]=10
#Matrix
(m1=matrix(100:111,nrow=4))
(m1=matrix(100:111,ncol=3,byrow=T))
length(x)
class(x)
attributes(m1)
x=101:124
m3=matrix(x,ncol=6)
m3
dim(m3)

#access to matrix
m1[1,]
m1[,1]
m1[1,1:3]
m1[c(1,3)]
m1[-c(1,3)]
paste("c",1:100)  #???
colSums(m1)
rowSums(m1)
colMeans(m1)
m1
t(m1) #transpose
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+") #row wise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*") #col wise

#addmargins

m1
addmargins(m1,margin = 1,sum) #col wise function
addmargins(m1,margin = 2,sum) #row wise function
rbind(m1,colSums(m1))  # bind col sum with the row
m1
addmargins(m1,2,mean) #row wise function
round(addmargins(m1,1,sd),2) #col wise function
?round
addmargins(m1,c(1,2),mean) #row & col wise function
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) #row & col wise function
?addmargins

#dataframes
(rollno=1:30)
(sname=paste('student',1:30,sep = ''))
(gender=sample(c('M','F'),size=30,replace= T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA','BTECH'),size = 30,replace = T,prob = c(.5,.4,.1)))
rollno; sname; gender
marks; marks2; course
table(gender)
df1=(data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = T))
df1
str(df1) #structure of DF
head(df1) #top 6 rows
?rnorm
trunc(3.999)
signif(13.447583,4)

?trunc
?abline
(x=rnorm(100,mean=60,sd=10))
plot(density(x))
abline(v=60,col='red')
df1=data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
df1
str(df1)
head(df1,3)
tail(df1)
summary(df1)
quantile(x)
quantile(x,seq(0,1,.1))
fivenum(x)
?fivenum
boxplot(x)
abline(h=fivenum(x))
hist(x)
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
str(df1)
df1
df1$gender #one column
df1[,c(2,4)] #multiple colums all rows
df1[1:10,]
df1[marks>50 & gender=='F',c(1,2,3,4)]
names(df1)
aggregate(df1$marks,by=list(df1$gender),FUN=max)
aggregate(df1,by=list(sname),df1$marks+df1$marks2) #not completed
