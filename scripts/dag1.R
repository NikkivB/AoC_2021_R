# Day 1, Part 1
# Get the input from the correct input file and store it in an array
input <- readLines("input/dag1.txt")
x <- 0
temp <- 0

# Loop trough all input lines and calculate if the next number is highter or lower than the current number.

for (i in 1:2000) {
  a <- as.integer(input[i])
  if (a > temp) {
    x <- x + 1
  }
  temp <- a
}

x <- x - 1
#print answer
cat("Dag 1, Part 1: ", x, "\n")
#-----------------------------------------
# Day 1, Part 2

# Get the input from the correct input file and store it in an array
input <- readLines("input/dag1.txt")
new_input <- vector()
x <- 0
b <- c <- d <- e <- f <- 0

# get the sum of the first three numbers in the input. do this for the length of the input.

for (i in 1:length(input)) {
  if (i == 1 | i == 2000) {
    a <- as.integer(input[i])
    new_input <- append(new_input, a)
  } else if (i == 2 | i == 1999) {
    a <- as.integer(input[i])
    b <- as.integer(input[i + 1])
    c <- a + b
    new_input <- append(new_input, c)
  } else {
    a <- as.integer(input[i])
    b <- as.integer(input[i + 1])
    c <- as.integer(input[i + 2])
    d <- a + b + c
    new_input <- append(new_input, d)
  }

}
for (i in 1:length(new_input)) {
  a <- as.integer(new_input[i])
  if (a > temp) {
    x <- x + 1
  }
  temp <- a
}

cat("Dag 1, Part 2: ", x, "\n")


