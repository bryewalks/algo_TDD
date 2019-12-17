const reduceSum = (inputArray) => {
  let sum = 0
  for (let i = 0; i < inputArray.length; i++) {
    sum = sum + inputArray[i]
  }
  return sum
}

const selectLessThan100 = (inputArray) => {
  let lessThan100 = []
  for (let i = 0; i < inputArray.length; i++) {
    if (inputArray[i] < 100) {
      lessThan100.push(inputArray[i])
    }
  }
  return lessThan100
}

const mapDouble = (inputArray) => {
 let doubledArray = []
 for (let i = 0; i < inputArray.length; i++) {
  doubledArray.push(inputArray[i] * 2)
 }
 return doubledArray
}

const arrayMax = (inputArray) => {
  let max = inputArray[0]
  for (let i = 1; i < inputArray.length; i++) {
    if (inputArray[i] > max) {
      max = inputArray[i]
    }
  }
  return max
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