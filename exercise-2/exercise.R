# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector.one, vector.two) {
  difference <- abs(length(vector.one) - length(vector.two))
  return (sprintf("The difference in lengths is %g", difference))
}

# Pass two vectors of different length to your `CompareLength` function
one <- c("blue")
two <- c("yellow", "green", "pink")
CompareLength(one, two) # The difference in lengths is 2

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.one, vector.two) {
  diffLength <- abs(length(vector.one) - length(vector.two))
  if(length(vector.one) > length(vector.two)) {
    return (sprintf("Your first vector is longer by %g elements", diffLength))
  } else {
    return (sprintf("Your second vector is longer by %g elements", diffLength))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(one, two)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer