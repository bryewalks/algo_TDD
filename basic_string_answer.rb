require "rspec"

class BasicString

  def reverse_string(input_string)
    input_string.reverse
    # Return the reverse of a given string.
  end

  def show_me_the_money(input_string)
    input_string.include?('$')
    # Given a string, return true if the “$” character is contained within the string or false if it is not.
  end

  def alternate_capitals(input_string)
    index = 0
    input_string.length.times do
      input_string[index] = input_string[index].upcase if index.odd?
      index += 1
    end
    input_string
    # Given a string, return a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)
  end

  def find_duplicate_character(input_string)
    index = 0
    input_string.length.times do
      return input_string[index] if input_string[index] == input_string[index + 1]
      index += 1
    end
    # Given a string, find the first occurence of two duplicate characters in a row, and return the duplicated character.
  end

  def reverse_words(input_string)
    input_string = input_string.split(' ')
    new_array = []
    index = -1
    input_string.each do |word|
      new_array << input_string[index]
      index -= 1
    end
    new_array.join(' ')

    # input_string.join(' ')
    # Given a string of words, return a new string that contains the words in reverse order.
  end

  def palindrome(input_string)
    input_string == input_string.reverse

    # Given a string, return true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)
  end

  def hamming(input_string1, input_string2)
    # Given two strings of equal length, return the number of characters that are different between the two strings.
  end

end

RSpec.describe BasicString do
  
  algorithm = BasicString.new

  describe "#reverse_string" do
    it "should return 'edcba' when given 'abcde' " do
      expect(algorithm.reverse_string('abcde')).to eq('edcba')
    end
  end

  describe "#show_me_the_money" do
    it "should return true when given 'i hate $ but i love money i know i know im crazy' " do
      expect(algorithm.show_me_the_money('i hate $ but i love money i know i know im crazy')).to eq(true)
    end

    it "should return false when given 'abcdefghijklmnopqrstuvwxyz' " do
      expect(algorithm.show_me_the_money('abcdefghijklmnopqrstuvwxyz')).to eq(false)
    end
  end

  describe "#alternate_capitals" do
    it "should return 'hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?' when given 'hello, how are your porcupines today?' " do
      expect(algorithm.alternate_capitals('hello, how are your porcupines today?')).to eq('hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?')
    end
  end

  describe "#find_duplicate_character" do
    it "should return 'h' when given 'abcdefghhijkkloooop' " do
      expect(algorithm.find_duplicate_character('abcdefghhijkkloooop')).to eq('h')
    end
  end

  describe "#reverse_words" do
    it "should return 24 when given 'popcorn is so cool isn’t it yeah i thought so' " do
      expect(algorithm.reverse_words('popcorn is so cool isn’t it yeah i thought so')).to eq('so thought i yeah it isn’t cool so is popcorn')
    end
  end

  describe "#palindrome" do
    it "should return true when given 'racecar' " do
      expect(algorithm.palindrome('racecar')).to eq(true)
    end

    it "should return false when given 'baloney' " do
      expect(algorithm.palindrome('baloney')).to eq(false)
    end
  end

  describe "#hamming" do
    it "should return 2 when given 'ABCDEFG' and 'ABCXEOG' " do
      expect(algorithm.hamming('ABCDEFG', 'ABCXEOG')).to eq(2)
    end

    it "should return 0 when given 'ABCDEFG' and 'ABCDEFG' " do
      expect(algorithm.hamming('ABCDEFG', 'ABCDEFG')).to eq(0)
    end
  end

end