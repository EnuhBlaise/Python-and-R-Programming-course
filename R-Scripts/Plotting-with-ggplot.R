#components
#ggplot2 is based on the grammar of graphics, the idea
#that you can build every graph from the same
#components: a data set, a coordinate system,
#and geoms-visual marks that represent data points.
#To display values, map variables in the data to visual
#properties of the geom (aesthetics) like size, color, and x
#and y locations

#Template:
library(ggplot2) #import the package

#ggplot(data, aes(x_axis, y_axis)) #Plot basics
#different geoms can be added to that in the form of layers to improve the plot
#example 
data(iris)
View(iris)

#aes argument determines the kind of coordinate we want (x,y,z...) axis

#Single Coordinate
#One numeric
a1 <- ggplot(iris, aes(Sepal.Length))

a1+ geom_area(stat = "bin")
#x, y, alpha, color, fill, linetype, size
a1 + geom_density(kernel = "gaussian")
#x, y, alpha, color, fill, group, linetype, size, weight
a1 + geom_dotplot(fill =  "pink", color = "red") #using the arguments
#x, y, alpha, color, fill
a1 + geom_freqpoly()
#x, y, alpha, color, group, linetype, size
a1 + geom_histogram()
#x, y, alpha, color, fill, linetype, size, weight
a1 + geom_qq(aes(sample = ))
#x, y, alpha, color, fill, linetype, size, weight

##scale color
a1 + geom_dotplot(aes(fill =  ..x..)) +  scale_fill_gradient(low="red", high="yellow")






#One factor
b1 <- ggplot(iris, aes(Species))

b1 + geom_bar(alpha = 5 )
#x, alpha, color, fill, linetype, size, weight

b1 + geom_bar(aes(fill = ..x..),  ) + scale_fill_gradient(low="red", high="yellow")

b2 <- b1 + geom_bar(aes(fill = ..x..),  ) + scale_fill_gradient(low="red", high="yellow")

##labelling
b2 + labs(x = "Species", y = "Counts",
     title ="A plot of distribution of plant species",
     subtitle = "Proportions",
     caption = "Figure 1",
     alt = "Add alt text to the plot")

##theme
## + theme_linedraw()



#Two coordinates
#Factor and numeric value
a <- ggplot(iris, aes(Species, Sepal.Length)) 

a + geom_col()
#x, y, alpha, color, fill, group, linetype, size
a + geom_boxplot()
#x, y, lower, middle, upper, ymax, ymin, alpha,
#color, fill, group, linetype, shape, size, weight
a + geom_dotplot(binaxis = "y", stackdir = "center")
#x, y, alpha, color, fill, group
a + geom_violin(scale = "area")
#x, y, alpha, color, fill, group, linetype, size, weight





#Numeric and numeric 
b <- ggplot(iris, aes(Sepal.Width, Sepal.Length)) 

b + geom_label(aes(label = Species), nudge_x = 1,
               nudge_y = 1) 
#- x, y, label, alpha, angle, color, family, fontface, hjust, lineheight, size, vjust
b + geom_point()
#x, y, alpha, color, fill, shape, size, stroke
b + geom_quantile()
#x, y, alpha, color, group, linetype, size, weight
b + geom_rug(sides = "bl")
#x, y, alpha, color, linetype, size
b + geom_smooth(method = lm)
#x, y, alpha, color, fill, group, linetype, size, weight
b + geom_text(aes(label = cty), nudge_x = 1,
nudge_y = 1) 
#- x, y, label, alpha, angle, color,
#family, fontface, hjust, lineheight, size, vjust



a #we havent added geoms so no points are shown for now 

a+geom_boxplot()#what kind of shape or GEOMetry shape do u want for your plot


#Factor and Factor
c <- ggplot(iris, aes(Species, Species)) 

c + geom_count()
#x, y, alpha, color, fill, shape, size, stroke
c + geom_jitter(height = 2, width = 2)
#x, y, alpha, color, fill, shape, size



##Three variables (you may never need it) if you do please refer to cheatsheet

##Continuous Bivariate Distributions
###May require further packages

a + geom_bin2d(binwidth = c(0.25, 500))
#x, y, alpha, color, fill, linetype, size, weight
a + geom_density_2d()
#x, y, alpha, color, group, linetype, size
a + geom_hex()
#x, y, alpha, color, fill, size


#continuous and a function e.g a regression, time series data, etc
b + geom_area()
#x, y, alpha, color, fill, linetype, size
b + geom_line()
#x, y, alpha, color, group, linetype, size
b + geom_step(direction = "hv")
#x, y, alpha, color, group, linetype, size




#A map
data <- data.frame(murder = USArrests$Murder,
                   state = tolower(rownames(USArrests)))
#A dataframe object is requires
map <- map_data("state")
k <- ggplot(data, aes(fill = murder))
k + geom_map(aes(map_id = state), map = map)+ expand_limits(x = map$long, y = map$lat)
#map_id, alpha, color, fill, linetype, size


















































