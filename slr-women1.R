#simple linear regression - women
fit1 = lm(weight ~ height, data=women)
?lm
#predict for height 69.5,70
(new = data.frame(height=c(69.5,70)))
(p1=predict(fit1, newdata = new))
cbind(new, p1)
plot(fit1)
