oldw <- getOption("warn")
options(warn = -1)


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
cat("Dag 3, part 2  ------------------ \n")

# VARIABLES
input <- readLines("input/dag3.txt")
most_common_vector <- input
least_common_vector <- input
count <- nchar(input[1])

to_delete_most <- vector()
to_delete_least <- vector()

# FUNCTIONS
find_most_common <- function(vector, index) {
  zero <- 0;
  one <- 0;

  for (item in vector) {
    temp <- substr(item, index, index)
    if (temp == 0) { zero <- zero + 1 }
    else if (temp == 1) { one <- one + 1 }
  }

  if (zero > one) { value <- 0 }
  else if (zero < one) { value <- 1 }
  else { value <- 1 }

  return(value)
}


# CODE
for (position in 1:count) {

  # Get most/least common value
  most_common <- find_most_common(most_common_vector, position)
  temp_least_common <- find_most_common(least_common_vector, position)
  if (temp_least_common == 1) { least_common <- 0 }
  else { least_common <- 1 }

  for (item in most_common_vector) {
    if (length(most_common_vector) > 1) {
      temp <- substr(item, position, position)

      if (temp != most_common) {
        temp_vector <- append(to_delete_most, item)
          most_common_vector <- most_common_vector[!most_common_vector %in% item]

      }
    }
  }

  for (item2 in least_common_vector) {
    if (length(least_common_vector) > 1) {
      temp <- substr(item2, position, position)

      if (temp != least_common) {
          least_common_vector <- least_common_vector[!least_common_vector %in% item2]
      }
    }
  }
}

ogr <- most_common_vector[1]
ogr <- strtoi(ogr, base = 2)
csr <- least_common_vector[1]
csr <- strtoi(csr, base = 2)

cat('OGR:', most_common_vector[1], '//', ogr, '\n')

cat('CSR:', least_common_vector[1], '//', csr, '\n')

product <- ogr * csr
cat('final output:', product, '\n')

#/////////
options(warn = oldw)
