function reverseString(inputString) {
  // Return the reverse of a given string.
  let reversedString =''
  for (let i = inputString.length - 1; i >= 0; i--) {
    reversedString += inputString[i];
  }
  return reversedString
}

function showMeTheMoney(inputString) {
  // Given a string, return true if the “$” character is contained within the string or false if it is not.
  for (let i = 0; i <= inputString.length - 1; i++) {
    if (inputString[i] === '$') return true;
  }
  return false
  
}

function alternateCapitals(inputString) {
  // Given a string, return a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)
  let sillyString = '';
  for (let i = 0; i <= inputString.length - 1; i++) {
    sillyString += (i % 2 !=0) ? inputString[i].toUpperCase() : inputString[i];
  }
  return sillyString
}

function findDuplicateCharacter(inputString) {
  // Given a string, find the first occurence of two duplicate characters in a row, and return the duplicated character.
  for (let i = 0; i < inputString.length - 1; i++) {
    if (inputString[i] === inputString[i + 1]) return inputString[i];
  }
  return false
}

function reverseWords(inputString) {
  // Given a string of words, return a new string that contains the words in reverse order.
  
}

function palindrome(inputString) {
  // Given a string, return true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)
  
}

function hamming(inputString, inputString2) {
  // Given two strings of equal length, return the number of characters that are different between the two strings.
  
}