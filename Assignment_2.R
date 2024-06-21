# Mikael Gouwtama
# 1007128127
# BTC1855 Assignment 2

# Note that while the Git repository is titled DHT-BTC1855, it will be specific
# for this assignment.

# Prompt the user to enter a three digit positive number
input <- readline(prompt="Enter a three digit positive number: ")

# Since the input is of class character, we can try to make it numeric as a 
# way to assess whether the user input a number. If they don't input a number,
# coercing them as numeric will result in NA.
input_num <- as.numeric(input)

#' Comments for Q1:
#' Nice! runs as expected, successfully takes user input
#' Small suggestion, totally optional, when you coerce the input using as.numeric sometimes it will create NAs
#' The console will show a warning that NAs are introduced
#' Since you are handling this case (if the input is an NA), you can use supressWarnings() to prevent the warning,
#' and print your own message, just like you already did

# We'll combine all the assessment of the user's input into a single if 
# condition, with else if and a nested if. First, we'll check the validity of 
# the user's input before finally chekcing whether that input is a narcissistic/
# Armstrong number or not

if (is.na(input_num)){
  # If the input is not a number, report it to the user
  print(paste(input, "is not a number"))
} else if (!is.na(input_num) & input_num <= 0) {
  # Then, if the numeric is not a positive number, report it to the user
  print(paste(input, "is not a positive number"))
} else if (!is.na(input_num) & nchar(input) != 3) {
  # Also check whether the numeric input is a three digit number, report it 
  # if its not
  print(paste(input, "is not a three digit number"))
  
  
  #' Comments for Q2:
  #' Code runs as expected, and successfully filters out invalid user inputs
  #' Well done!
  
} else {
  # Finally, if the input is a three digit positive number, calculate the 
  # sum of the cubes
  
  # Isolate each character digit and make that numeric, allowing for 
  # mathematical operations to be performed with it
  first_num <- as.numeric(substr(input, 1, 1))
  second_num <- as.numeric(substr(input, 2, 2))
  third_num <- as.numeric(substr(input, 3, 3))
  
  sum_cubes <- (first_num)^3 + (second_num)^3 + (third_num)^3
  
  #' Comments for Q3:
  #' Nice! works as expected, is easy to understand
  #' I like that you used substr, I hadnt seen that function before
  #' It would be helpful to include a comment that explains why youre using it and what it's default parameters are
  
  if (sum_cubes == as.numeric(input)){
    # If the sum of the cubes is the same as the input, print it is a 
    # narcissistic number
    print(paste(input, "is a narcissistic number, great job!"))
  } else {
    # If the sum of the cube is not the same as the input, print it as 
    # its is not an Armstrong number
    print(paste(input, "is not an Armstrong number, try again :(("))
  }
}

#' Comments for Q4:
#' Again well done! The code works as expected and prints an appropriate response
#' Suggestion for: [if (sum_cubes == as.numeric(input))]
#' Here you can use the the input_num instead of reapplying the as.numeric function to input
#' You already did this before and stored it in a variable so why not just reuse it?
#' It makes your code more efficient


#' Overall:
#' Well done!