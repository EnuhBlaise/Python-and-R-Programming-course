#Data wrangling 

#tips
data(iris)

dplyr::tbl_df(iris)
#Converts data to tbl class. tbl's are easier to examine than
#data frames. R displays only the data that fits onscreen. 

dplyr::glimpse(iris)
#Information dense summary of tbl data.

utils::View(iris)
#View data set in spreadsheet-like display (note capital V)

dplyr::%>%
#Passes object on left hand side as first argument (or .
#argument) of function on righthand side.


#Reshaping Data - Changing the layout of the dataset

dplyr::%>%
#Passes object on left hand side as first argument (or .argument) of function on righthand side.

tidyr::spread(pollution, size, amount)
#Spread rows into columns

tidyr::separate(storms, date, c("y", "m", "d"))
#Separate one column into several

tidyr::unite(data, col, ..., sep)
#Unite several columns into one

dplyr::data_frame(a = 1:3, b = 4:6)
#Combine vectors into data frame (optimized).
dplyr::arrange(mtcars, mpg)
#Order rows by values of a column (low to high).
dplyr::arrange(mtcars, desc(mpg))
#Order rows by values of a column (high to low).
dplyr::rename(tb, y = year)
#Rename the columns of a data frame


#Subsetting Within rows

dplyr::filter(iris, Sepal.Length > 7) 
#Extract rows that meet logical criteria.
dplyr::distinct(iris)
#Remove duplicate rows.
dplyr::sample_frac(iris, 0.5, replace = TRUE)
#Randomly select fraction of rows.
dplyr::sample_n(iris, 10, replace = TRUE)
#Randomly select n rows.
dplyr::slice(iris, 10:15)
#Select rows by position.
dplyr::top_n(storms, 2, date)
#Select and order top n entries (by group if grouped data)



#Subsetting variables within columns

dplyr::select(iris, Sepal.Width, Petal.Length, Species)
#Select columns by name or helper function.

#check ?select for other detailed uses of select


#Summarizing 

dplyr::summarise(iris, avg = mean(Sepal.Length))
#Summarise data into single row of values.
dplyr::summarise_each(iris, funs(mean))
#Apply summary function to each column.
dplyr::count(iris, Species, wt = Sepal.Length)
#Count number of rows with each unique value of variable (with or without weights).


#Making new variables
dplyr::mutate(iris, sepal = Sepal.Length + Sepal. Width)
#Compute and append one or more new columns.
dplyr::mutate_each(iris, funs(min_rank))
#Apply window function to each column.
dplyr::transmute(iris, sepal = Sepal.Length + Sepal. Width)
#Compute one or more new columns. Drop original columns.



#Combining Datasets
x1 = c("A", "B", "C")
x2 = c(1, 2, 3)
x3 = c("T", "F", "T")
a = data.frame(x1,x2)
b = data.frame(x1,x3)


a
#Mutating joins
dplyr::left_join(a, b, by = "x1")
#Join matching rows from b to a.
dplyr::right_join(a, b, by = "x1")
#Join matching rows from a to b.
dplyr::inner_join(a, b, by = "x1")
#Join data. Retain only rows in both sets.
dplyr::full_join(a, b, by = "x1")
#Join data. Retain all values, all rows.


#Filtering joins
dplyr::semi_join(a, b, by = "x1")
#All rows in a that have a match in b.
dplyr::anti_join(a, b, by = "x1")
#All rows in a that do not have a match in b

#Sorting commonalities within dataframes
dplyr::intersect(y, z)
#Rows that appear in both y and z.
dplyr::union(y, z)
#Rows that appear in either or both y and z.
dplyr::setdiff(y, z)
#Rows that appear in y but not z

#Binding dataframes
dplyr::bind_rows(y, z)
#Append z to y as new rows.
dplyr::bind_cols(y, z)
#Append z to y as new columns. Caution: matches rows by position.


#Grouping data
dplyr::group_by(iris, Species)
#Group data into rows with the same value of Species.
dplyr::ungroup(iris)
#Remove grouping information from data frame.
iris %>% group_by(Species) %>% summarise(.)
#Compute separate summary row for each group
iris %>% group_by(Species) %>% mutate(.)
#Compute new variables by group.


#devtools::install_github("rstudio/EDAWR") for data sets
#Learn more with browseVignettes(package = c("dplyr", "tidyr"))














































































