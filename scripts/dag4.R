# Day 4, part 1
input <- readLines("input/dag4.txt")
temp <- vector()

# Get the called bingo numbers.
called_numbers <- input[1]
cat('Called numbers: ', called_numbers, "\n")

#get the cards
for (i in 3:length(input)) {
  if (nchar(input[[i]]) > 0) {
  temp[i] <- input[i]
#   cat(i - 2, ':', temp[i], '\n')
  }
}

lineNumber <- 1
cards <- vector()
for (cardNumber in 1:3) {
  for (row in 1:5) {
  cat(cardNumber, ':', row, '\n')
#     cards[cardNumber-row] <- as.matrix(temp[lineNumber])
  }
}

# print(cards)