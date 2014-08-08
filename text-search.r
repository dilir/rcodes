# Text/character replacement
x=c("blood","brood","voodoo","lounge")

sub("o","_xxx_",x) #replaces only the first instance

y=c("blood","brood","voodoo","lounge")

gsub("o","_xxx_",y) #replaces all instances

#++++++++++++++++grep++++++++++++++++++++++
#finds the location of occurance of a text in a variable
y=c("blood","brood","voodoo","lounge")
grep("oo",y)
#displays the elements where "oo" occurs
grep("oo",y, value=T)
grepl("oo",y) # displays logical values  
table(grepl("oo",y)) # displays a table logical values  
