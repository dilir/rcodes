
As human beings, we tend to associate with like-minded people—“birds of a feather
flock together.” We have a great mental ability for finding repeating patterns, and
we continually associate what we see, hear, smell, and taste with things that are
already in our memory. For example, the taste of honey reminds us more of the
taste of sugar than salt. So we group together the things that taste like sugar and
honey and call them sweet. Without even knowing what sweet tastes like, we know
that all the sugary things in the world are similar and of the same group. We also
know how different they are from all the things belonging to the salty group.
Unconsciously, we group together tastes into such clusters. We have clusters of sugary
things and salty things, with each group having hundreds of items in it.

Clusters are also defined by a center point and radius. The center of the circle
is called the centroid, or mean (average), of that cluster. It’s the point whose coordinates
are the average of the x and y coordinates of all points in the cluster.[ref: Mahout in Action]

Code

setwd("f:/coursera/coursera/exploratory data analysis")
options(stringsAsFactors=F)
#hierarchical clustering
x=round(rnorm(36))
y=round(rnorm(36))
df1<- data.frame(x,y)
plot(df1)
text(x+5,y+5, labels=as.character(1:36))
disto<- dist(df1)
clusto <- hclust(disto)
plot(clusto)

#k-means clustering
x=rnorm(36)
y=rnorm(36)
df1<- data.frame(x,y)
km <- kmeans(df1,centers=3)
names(km)
km$cluster
km$centers
plot(x,y, col=km$cluster, cex=1,pch=2)
points(km$centers, pch=3, cex=3, col=1:3,lwd=3)

#+++++++++++++++++
heatmap(as.matrix(df1))
heatmap(as.matrix(data.frame(iris$Sepal.Width, iris$Sepal.Length)))

#++++++++++++
x=iris$Sepal.Length
y=iris$Sepal.Width
kdf <- data.frame(x,y,iris$Species)
km <- kmeans(kdf[,c(1,2)],3)
#km$centers
par(mfrow=c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, col=iris$Species,
     main="Plot - iris")
abline(0,3)
plot(x,y, col=km$cluster, cex=1,pch=1, main="Plot of iris k-means Clusters")
points(km$centers, pch=3, cex=2, col=km$cluster,lwd=3)
