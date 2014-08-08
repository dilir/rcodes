#
#Splitting text vectors
x=c("bit.ly","goo.gl","yio","po.pl")
splitvecs <- strsplit(x,"\\.") #split vectors based on a character "."
splitvecs

#get the first parts of the split vectors

firstnames <- sapply(splitvecs, function(x) x[1])
firstnames

#get the second parts of the split vectors
secondnames <- sapply(splitvecs, function(x) x[2])
secondnames
