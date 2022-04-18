#Data types in R

as.logical(x) #Boolean values (TRUE, FALSE)
as.numeric(x) #integers or floating point numbers
as.character(x) # Character strings
as.factor(x) #character stings with some preset levels. This is needed for statistical models like aov



##Matrices
m <- matrix(x, nrow = 3, ncol = 3) #creating a random matrix
#m[r,c] general structure of matrix r= row, c= column
m[2, ] #select all elements in the second row
m[ , 1] #Select the first column
m[2, 3] #select the element on row 2 and column 3


##Lists
l <- list(x = 1:5, y = c('a', 'b')) #A list of vector variables
l[2] #shows the second element in the list as well as its contents
l[[2]] #shows only the element in the second list
l$x #gets the vector in the variable (list or dataframe) 
l["y"] #Shows elements contained in y


#R Data frames
##Dataframes are collection of list all of same length 



df <- data.frame(x = 1:3, y = c('a', 'b', 'c')) #lists with all elements of same length
View(df)
head(df)
df$x #subsetting lists in a matrix. 
df[[2]] #by list position


##Subsetting by position
df[ , 2] #all rows of the second column, or second list
df[2, ] #all elements in the second rows 
df[2, 2] #second row, second column

nrow(df) #number of rows in the dataframe 
ncol(df)#number of columns in the dataframe
dim(df) #number of columns and rowns in the dataframe 


cbind(df1, df2) #bind two dataframes by columns
rbind(df1, df2) #binds the two dataframes by rows



#Strings

paste(x, y, sep = ' ') #Join multiple vectors together.
paste(x, collapse = ' ') #Join elements of a vector together.
grep(pattern, x) #Find regular expression matches in x.
gsub(pattern, replace, x) #Replace matches in x with a string.
toupper(x) #Convert to uppercase.
tolower(x) #Convert to lowercase.
nchar(x) #Number of characters in a string


#Factors
factor(x) #Turn a vector to a factor. can as well set the levels and order
cut(x, breaks = 4) #turns numeric vectors into a factor by cutting into sections














