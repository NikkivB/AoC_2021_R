# Day 4, part 1
input <- readLines("input/dag4.txt")

# Get the called bingo numbers.
called_numbers <- input[1]
cat('Called numbers: ', called_numbers, "\n")

cards <- vector()

for (line in input[2:length(input)]) {
  # Get the card numbers.
  card_numbers <- strsplit(line, " ")[[1]]
  cat('Card numbers: ', card_numbers, "\n")
  # Add the card to the vector.
  cards <- c(cards, bingo_numbers)
}