
#' Kaprekar's Routine Calculator
#'
#' @description
#' Prompts the user for a four-digit number and performs Kaprekar's routine 
#' iteratively until the result reaches Kaprekar's constant: 6174.
#'
#' @details
#' The routine follows these steps:
#' 1. Take any four-digit number (at least two digits must be different).
#' 2. Arrange the digits in descending and ascending order to get two new numbers.
#' 3. Subtract the smaller number from the larger number.
#' 4. Repeat the process with the result.
#' 
#' The function includes a check to pad the number with a leading zero if 
#' a subtraction results in a three-digit number, ensuring the routine continues correctly.
#'
#' @return 
#' This function does not return a value (NULL). It prints the step-by-step 
#' calculation and the number of iterations to the console.
#'
#' @note 
#' The function relies on user input via `readline()`. Ensure the input is 
#' a four-digit number where not all digits are identical (e.g., avoid "1111").
#'
#' @examples
#' \dontrun{
#' kaprekars_constant()
#' # When prompted, enter: 3524
#' }
#' 
#' @export

kaprekars_constant <- function() {
  digits <- readline(prompt = "Enter a 4 digit number, but all 4 digits must not be the same")

  digits <- as.numeric(digits)

  it <- 0

  print(paste("Start with:", digits))
  print(paste(" "))
  while (digits != 6174) {
    it <- it + 1

    digits <- as.numeric(strsplit(as.character(digits), "")[[1]])

    if (length(digits) == 3) {
      digits <- c(0, digits)
    }

    digits_asc <- as.numeric(paste0(sort(digits), collapse = ""))

    digits_desc <- as.numeric(paste0(sort(digits, decreasing = TRUE), collapse = ""))

    print(paste("Iteration:", it))
    print(paste(" "))
    print(paste("   Sort decending:", digits_desc))
    print(paste(" - Sort assending:", digits_asc))

    digits <- digits_desc - digits_asc

    print(paste("                  -----"))
    print(paste("Result:           ", digits))
    print(paste(" "))
  }
}

kaprekars_constant()

### again but chucked in a loop to iterate from 0001 to 9998

# rejig function to remove text and just return number of iterations

kaprekars_constant <- function(i) {
  digits <- i
  
  digits <- as.numeric(digits)
  
  it <- 0

  while (digits != 6174) {
    it <- it + 1
    
    digits <- as.numeric(strsplit(as.character(digits), "")[[1]])
    
    if(length(digits) == 3) {
      digits <- c(0, digits)
    }
    
    digits_asc <- as.numeric(paste0(sort(digits), collapse = ""))
    
    digits_desc <- as.numeric(paste0(sort(digits, decreasing = TRUE), collapse = ""))
    
    digits <- digits_desc - digits_asc
    
  }
  it
}

iterations <- 0
for (i in 1001:9998) {
  print(i)
  chk <- as.numeric(strsplit(as.character(i), "")[[1]])
  if (!var(chk) == 0) {
    iterations <- c(iterations, kaprekars_constant(i))
  }
}

# print table of results

table(iterations)

# print plot of results

hist(iterations)

#  So in conclusion the number of iterations follows a really weird pattern
#  Also the maximum number of iterations is 7 but that is not the most 
#  frequent which is 3

# Weird stuff.

 