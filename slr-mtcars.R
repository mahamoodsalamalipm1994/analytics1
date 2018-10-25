#predict mpg based on the weight in mtcars
fit2 = lm(mpg ~ wt,data=mtcars)
fit2
(new2 = data.frame(wt=c(2,3)))
(p2=predict(fit2, newdata = new2))
cbind(new2, p2)
plot(fit2)