#Basic computations and Statistics


log(x) #Natural log. 
sum(x) #Sum.
exp(x) #Exponential. 
mean(x) #Mean.
max(x) #Largest element. 
median(x) #Median.
min(x) #Smallest element. 
quantile(x) #Percentage quantiles.
round(x, n) #Round to n decimal places.
rank(x) #Rank of elements.
signif(x, n) #Round to n significant figures.
var(x) #The variance.
cor(x, y) #Correlation. 
sd(x) #The standard deviation




##Statistics functions 

#help(function) #get more information about function usage

lm(x ~ y, data=df) #linear model
glm(x ~ y, data=df) #generalized linear model
summary.glm(x) #get more detailed information out of a model
t.test(x, y) #perform a t-test for difference between means

pairwise.t.test(x) #perform a t-test for paired data
prop.test() #Test for difference between proportions
aov() #Analysis of variance


##Plotting


plot(x) #plot x
plot(x, y) #values of x against y.
hist(x) #Histogram of x

#More about ggplot2
