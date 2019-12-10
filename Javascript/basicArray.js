const reduceSum = (inputArray) => {
  // Return the sum of all numbers in a given array.
}

const selectLessThan100 = (inputArray) => {
  //Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.
}

const mapDouble = (inputArray) => {
 //Given an array of numbers, return a new array whose values are the original array’s value doubled.
}

const arrayMax = (inputArray) => {
  let max = inputArray[0]
  for (let i = 1; i < inputArray.length; i++) {
    if (inputArray[i] > max) {
      max = inputArray[i]
    }
  }
  return max
  //Return the greatest value from an array of numbers.
}

const reduceProduct = (inputArray) => {
  //Given an array of numbers, return the product of all the numbers.
}

const reverseArray = (inputArray) => {
  //Given an array, return a new array that contains the original array’s values in reverse.
}

const skipIt = (inputArray) => {
  // Given an array of numbers, return a new array in which only select numbers from the original array are included, based on the following details:

  // The new array should contain the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right of this one. If the next number is 4, then the next number after that is the one four spaces to the right of this 4. And so on and so forth until the end of the array is reached.
  // Input:
  // [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
  // Output:
  // [2, 3, 1, 2, 2, 1, 5, 2, 2]
}