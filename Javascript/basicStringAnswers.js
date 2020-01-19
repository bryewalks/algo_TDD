function reverseString(inputString) {
  let reversedString =''
  for (let i = inputString.length - 1; i >= 0; i--) {
    reversedString += inputString[i];
  }
  return reversedString
}

function showMeTheMoney(inputString) {
  for (let i = 0; i <= inputString.length - 1; i++) {
    if (inputString[i] === '$') return true;
  }
  return false
  
}

function alternateCapitals(inputString) {
  let sillyString = '';
  for (let i = 0; i <= inputString.length - 1; i++) {
    sillyString += (i % 2 !=0) ? inputString[i].toUpperCase() : inputString[i];
  }
  return sillyString
}

function findDuplicateCharacter(inputString) {
  for (let i = 0; i < inputString.length - 1; i++) {
    if (inputString[i] === inputString[i + 1]) return inputString[i];
  }
  return false
}

function reverseWords(inputString) {
  let reverseArray = []
  let wordArray = inputString.split(" ")
  for (let i = wordArray.length - 1; i >= 0; i--) {
    reverseArray.push(wordArray[i])
  }
  return reverseArray.join(" ")
}

function palindrome(inputString) {
  // Given a string, return true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)
  
}

function hamming(inputString, inputString2) {
  // Given two strings of equal length, return the number of characters that are different between the two strings.
  
}

console.log(reverseWords("this is a test"))