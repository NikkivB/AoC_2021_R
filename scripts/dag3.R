# Day 3, Part 1

input <- readLines("input/dag3.txt")
epsilon <- vector() # least
gamma <- vector() # most
length <- nchar(input[1])

for (i in 1:length) {
  temp <- vector()
  zero <- 0
  one <- 0

  for (line in input) {
    number <- substr(line, i, i)

    if (number == "0") {
      zero <- zero + 1
    } else if (number == "1") {
      one <- one + 1
    }
  }

  if (zero < one) {
    epsilon <- append(epsilon, 0)
    gamma <- append(gamma, 1)
  } else if (zero > one) {
    epsilon <- append(epsilon, 1)
    gamma <- append(gamma, 0)
  } else {
    epsilon <- append(epsilon, 0)
    gamma <- append(gamma, 0)
  }
}
gamma <- paste(gamma, collapse = "")
epsilon <- paste(epsilon, collapse = "")

gamma <- strtoi(gamma, base = 2)
epsilon <- strtoi(epsilon, base = 2)

product <- gamma * epsilon

cat("Dag 3, part 1  ------------------ \n")
cat("Output: ", product, "\n")

# -----------------------------------------------------
# Day 3, Part 2

oxigen_generator <- 0
CO2_scrubber <- 0

input <- readLines("input/dag3.txt")
length <- nchar(input[1])

for (i in 1:length) {
  temp <- vector()
  zero <- 0
  one <- 0

  for (line in input) {
    number <- substr(line, i, i)

    if (number == "0") {
      zero <- zero + 1
    } else if (number == "1") {
      one <- one + 1
    }
  }

  if (zero < one) {
    epsilon <- append(epsilon, 0)
    gamma <- append(gamma, 1)
  } else if (zero > one) {
    epsilon <- append(epsilon, 1)
    gamma <- append(gamma, 0)
  } else {
    epsilon <- append(epsilon, 0)
    gamma <- append(gamma, 0)
  }
}

for (i in 1:length) {
  temp <- substr(epsilon, i, i)
  for (line in input) {


    if (substr(line, i, i) == temp) { # haal deze fucker uit de if statement

      input[-line]
    }
  }
}
print(input)

cat("Dag 3, part 2  ------------------ \n")