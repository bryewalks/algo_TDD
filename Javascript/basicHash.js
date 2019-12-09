const mostFrequentLetter = (inputString) => {
  // Given a string, find the most commonly occurring letter.
}

const etl1 = (inputArray, inputNumber) => {
  // You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.
}

const flattenHash = (inputHash) => {
  // Given a hash, return a flat array containing all the hash’s keys and values.
}

const flipHash = (inputHash) => {
  // Given a hash, create a new hash that has the keys and values switched.
}

const rnaTranscription = (inputString) => {
  // Given a DNA strand, return its RNA complement (per RNA transcription).

  // Both DNA and RNA strands are a sequence of nucleotides.

  // The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).

  // The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).

  // Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement, as follows:

  // G -> C
  // C -> G
  // T -> A
  // A -> U

  // So based on all this, here's a sample input/output:

  // Input: 'ACGTGGTCTTAA'
  // Output: 'UGCACCAGAAUU'
}

const anagrams = (inputString1, inputString2) => {
  // Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

  // Do not use any built-in sort methods.
}

const longestNonDuplicateSubstring = (inputString) => {
  // Given a string, return the length of the longest substring that does not contain duplicate characters.

  // Input: "yyuiumcecy"
  // Output: 5
  // This is because the longest substring (without duplicate characters) of the input string is "iumce", which has a length of 5.

  // Input: "abcabcbb"
  // Output: 3
  // This is because the longest substring (without duplicate characters) of the input string is "abc", (it's tied with "bca" or "cab") - which has a length is 3.

  // Input: "ddddd"
  // Output: 1
  // The longest substring is "d", with the length of 1.
}