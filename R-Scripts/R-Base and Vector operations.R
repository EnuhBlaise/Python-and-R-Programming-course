##Getting Help
#How to access help files

?mean #Get help of a particular function.
help.search("weighted mean") #Search the help files for a word or phrase.
help(package = "dplyr") #Find help for a package.


#Knowing More about R objects

str(object) #Get a summary of an object's structure. (Insert the object in the brackets)
class(object) #Find the class an object belongs to


#How to use the Libraries 

install.packages("dplyr") #Download and install a package from CRAN.
library(dplyr) #Load the package into the session, making all its functions available to use.
dplyr::select #Use a particular function from a package. 
#You can use the help(dplyr function to see which functions are in the dplyr package)
data(iris) #Load a built-in dataset into the environment


#working directory 

getwd() #Find the current working directory (where inputs are found and outputs are sent).
setwd("C://file/path") #Change the current working directory



# R vectors
##creating vectors in R
c(2, 4, 6) #creating an element of vectors
c(2, 4, 6, 2.9, c(3,7)) #creating a vector of integer element
c("a", "b", "c")
c(2, 4, 6, 2.9,"a", "b", "c") #converts all content to strings.
2:6 #creating a sequence of integer elements

seq(2, 3, by=0.5) #A sequence with a consistent interval
rep(1:2, times=3) #Repeat a sequence of vectors three times
rep(1:2, each=3) #Repeat each individual element three times


##Vector functions
sort(x) #Sort the elements in x.
rev(x) #Reverse the elements in x.
table(x) #See counts of elements in x.
unique(x) #show which of the values in x are unique


##Selecting elements in vectors | Subsetting

x <- c(2, 4, 6, 2.9, c(3,7))#make an arbitrary x variable
x

##subsetting by element position
x[2] #get the second element in the variable x.
x[-4] #get all all but the fourth element in the variable.
x[2:4] # Select elements two to four in the variable.
x[-(2:4)] #All elements except elements two to four.
x[c(1, 4)] #get elements one and four.

##Subsetting by the value of elements
x[x == 10] #Get all elements that are equal to 10.
x[x < 0] #get All elements that are less than zero.
x[x %in% c(1, 2, 5)] #get the Elements of x that are in the set defined (1,2,3)

##Using the names of elements for data frames
x <- c("apple", "orange", "grape", "mango")
y <- c(2, 4, 6, 2.9)
x["apple"] # get the element with name "apple".








#Conditions
#a == b Are equal 
#a != b Not equal 

#a > b Greater than a >= b 
#a < b Less than a <= b 

#Greater than or equal to 
#Less than or equal to 

#is.na(a) Is missing
#is.null(a) Is null



##The R environment

ls() #list all variables in the environment

rm(x) #Remove x from the environment

rm(list = ls()) #Remove all variables from the environment

####Same can be done with the mouse clicks in the environment area


























































