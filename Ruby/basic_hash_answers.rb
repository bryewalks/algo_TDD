require "rspec"

class BasicHash

  def most_frequent_letter(input_string)
    letter_hash = {}
    max_letter = ''
    count = 0
    input_string.each_char do |char|
      letter_hash[char] ? letter_hash[char] += 1 : letter_hash[char] = 1

      if letter_hash[char] > count
        count = letter_hash[char]
        max_letter = char
      end
    end
    max_letter 
  end

  def etl_1(input_array, input_number)
    new_hash = {}
    input_array.each { |letter| new_hash[letter] = input_number }
    new_hash
  end

  def flatten_hash(input_hash)
    new_array = []
    input_hash.each { |key, value| new_array << key && new_array << value }
    new_array
  end

  def flip_hash(input_hash)
    new_hash = {}
    input_hash.each { |key,value| new_hash[value] = key }
    new_hash
  end

  def rna_transcription(input_string)
    letter_key = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
    new_string = ''
    input_string.chars.each { |letter| new_string += letter_key[letter] }
    new_string
  end

  def anagrams(input_string1, input_string2)
    hash1 = {}
    hash2 = {}
    input_string1.chars.each { |letter| hash1[letter] ? hash1[letter] += 1 : hash1[letter] = 1 }
    input_string2.chars.each { |letter| hash2[letter] ? hash2[letter] += 1 : hash2[letter] = 1 }
    hash1 == hash2
  end

  def longest_non_duplicate_substring(input_string)
    max_substring = input_string[0]
    start = 0
    finish = 0

    while finish < input_string.length
      input_string[start..finish].each_char { |char| start += 1 if input_string[start..finish].count(char) > 1 }
      max_substring = input_string[start..finish] if input_string[start..finish].length > max_substring.length
      finish += 1
    end

    max_substring.length
  end

end

RSpec.describe BasicHash do
  
  let(:algorithm) { BasicHash.new }

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

    it "should return true when given 'stressed', 'desserts' " do
      expect(algorithm.anagrams('stressed', 'desserts')).to eq(true)
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

    it "should return 1 when given 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabcdefghijklmnopqrstuvwxyz' " do
      expect(algorithm.longest_non_duplicate_substring('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabcdefghijklmnopqrstuvwxyz')).to eq(26)
    end 
  end

end