#Loops and conditions

##For Loops
numbers <- c(2, 4, 6, 2.9,3,7)
for (a in numbers){
  b <- a*2
  print(b)
}

##While loops
x=1
while (x < 40){
  a <- x + 2
  print(a)
  x <- a+2
}

##If statements
x=5
if (x > 1){
  print(" X is greater than 1")
} else {
  print(" X is less than 1")
}

##Functions 

multiply <- function(a, b){
  x <- a*b
  return(x)
}
multiply(5, 8)





