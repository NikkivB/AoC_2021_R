# Day 2, Part 1

input <- readLines("input/dag2.txt")
horizontal <- 0
vertical <- 0

for (i in input) {

  direction <- unlist(strsplit(i, " "))[1]
  amount <- as.integer(unlist(strsplit(i, " "))[2])

  if (direction == "up") {
    vertical <- vertical - amount
  } else if (direction == "down") {
    vertical <- vertical + amount
  } else {
    horizontal <- horizontal + amount
  }
}

product <- horizontal * vertical

cat("Dag 2, part 1  ------------------ \n")
cat("Output:", product, "\n")

# -----------------------------------------------------
# Day 2, Part 2

input <- readLines("input/dag2.txt")
horizontal <- 0
vertical <- 0
aim <- 0

for (i in input) {
  direction <- unlist(strsplit(i, " "))[1]
  amount <- as.integer(unlist(strsplit(i, " "))[2])

    if (direction == "up") {
    aim <- aim - amount
  } else if (direction == "down") {
    aim <- aim + amount
  } else {
      horizontal <- horizontal + amount
      vertical <- vertical + aim * amount
  }

}

product <- horizontal * vertical

cat("Dag 2, part 2  ------------------ \n")
cat("Output:", product, "\n")