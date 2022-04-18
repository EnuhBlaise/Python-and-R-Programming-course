#Reading and writing files


#file management paths
#absolute and relative paths , \ this is a backlash symbol in R
#either use \\ or / for file paths
file.path("C:", "Users", "Blaisonyl", "Documents", fsep="/") ) #making reproducible code


##text files
df <- read.table("file.txt") #reading tables
write.table(df, "file.txt") #write a delimited text file

##csv files
df <- read.csv("file.csv") #reading a comma seperated values file
write.csv(df, "file.csv") #write a comma seperated values file

##reading excel files
library(readxl) #library for reading excel files, install with install.packages("readxl")
df <- read_xlsx("file.xlsx") #file path, file name 


