require "rspec"

class BasicHash

  def most_frequent_letter(input_string)
    # Given a string, find the most commonly occurring letter.
  end

  def etl_1(input_array, input_number)
    # You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.
  end

  def flatten_hash(input_hash)
    # Given a hash, return a flat array containing all the hash’s keys and values.
  end

  def flip_hash(input_hash)
    # Given a hash, create a new hash that has the keys and values switched.
  end

  def rna_transcription(input_string)
    # Given a DNA strand, return its RNA complement (per RNA transcription).

    # Both DNA and RNA strands are a sequence of nucleotides.

    # The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).

    # The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).

    # Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement, as follows:

    # G -> C
    # C -> G
    # T -> A
    # A -> U

    # So based on all this, here's a sample input/output:

    # Input: 'ACGTGGTCTTAA'
    # Output: 'UGCACCAGAAUU'
  end

  def anagrams(input_string1, input_string2)
    # Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

    # Do not use any built-in sort methods.
  end

  def longest_non_duplicate_substring(input_string)
    # Given a string, return the length of the longest substring that does not contain duplicate characters.

    # Input: "yyuiumcecy"
    # Output: 5
    # This is because the longest substring (without duplicate characters) of the input string is "iumce", which has a length of 5.

    # Input: "abcabcbb"
    # Output: 3
    # This is because the longest substring (without duplicate characters) of the input string is "abc", (it's tied with "bca" or "cab") - which has a length is 3.

    # Input: "ddddd"
    # Output: 1
    # The longest substring is "d", with the length of 1.
  end

end

RSpec.describe BasicHash do
  
  algorithm = BasicHash.new

  describe "#most_frequent_letter" do
    it "should return 'p' when given 'peter piper picked a peck of pickled peppers' " do
      expect(algorithm.most_frequent_letter('peter piper picked a peck of pickled peppers')).to eq('p')
    end
  end

  describe "#etl_1" do
    it "should return {'a' => 1,'e' => 1,'i' => 1,'o' => 1,'u' => 1} when given ['a', 'e', 'i', 'o', 'u'], 1 " do
      expect(algorithm.etl_1(["a", "e", "i", "o", "u"], 1)).to eq({'a' => 1,'e' => 1,'i' => 1,'o' => 1,'u' => 1})
    end
  end

  describe "#flatten_hash" do
    it "should return [“a”, 1, “b”, 2, “c”, 3, “d”, 4] when given {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4} " do
      expect(algorithm.flatten_hash({'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4})).to eq(['a', 1, 'b', 2, 'c', 3, 'd', 4])
    end
  end

  describe "#flip_hash" do
    it "should return {1 => 'a', 2 => 'b', 3 => 'c'} when given {'a' => 1, 'b' => 2, 'c' => 3} " do
      expect(algorithm.flip_hash({'a' => 1, 'b' => 2, 'c' => 3})).to eq({1 => 'a', 2 => 'b', 3 => 'c'})
    end
  end

  describe "#rna_transcription" do
    it "should return 'UGCACCAGAAUU' when given 'ACGTGGTCTTAA' " do
      expect(algorithm.rna_transcription('ACGTGGTCTTAA')).to eq('UGCACCAGAAUU')
    end
  end

  describe "#anagrams" do
    it "should return true when given 'silent', 'listen' " do
      expect(algorithm.anagrams('silent', 'listen')).to eq(true)
    end

    it "should return false when given 'frog', 'bear' " do
      expect(algorithm.anagrams('frog', 'bear')).to eq(false)
    end
  end

  describe "#longest_non_duplicate_substring" do
    it "should return 5 when given 'yyuiumcecy' " do
      expect(algorithm.longest_non_duplicate_substring('yyuiumcecy')).to eq(5)
    end

    it "should return 3 when given 'abcabcbb' " do
      expect(algorithm.longest_non_duplicate_substring('abcabcbb')).to eq(3)
    end

    it "should return 1 when given 'ddddd' " do
      expect(algorithm.longest_non_duplicate_substring('ddddd')).to eq(1)
    end
  end

end