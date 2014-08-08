with(iris, boxplot(Sepal.Width~Species,col=c("red","blue","yellow"),notch=T))

# histogram with rug
hist(iris$Sepal.Width, col="green")
rug(iris$Sepal.Width,ticksize=0.01,line=2)
#---------

#boxplot with mean as abline (..benchmark..)
boxplot(iris$Sepal.Width, col="red",notch=T)
abline(h=mean(iris$Sepal.Width),lty=3, col=3, lwd=3)
abline(a=2,b=.6)

#---------
