require "rspec"

class BasicString

  def reverse_string(input_string)
    input_string.reverse

    # without reverse
    # reversed = []
    # split_array = input_string.split('')
    # input_string.length.times { reversed << split_array.pop }
    # reversed.join
  end

  def show_me_the_money(input_string)
    input_string.include?('$')

    # without include
    # input_string.length.times.with_index { |index| return true if input_string[index] == '$' }
    # return false
  end

  def alternate_capitals(input_string)
    input_string.length.times.with_index { |index| input_string[index] = input_string[index].upcase if index.odd? }
    input_string
  end

  def find_duplicate_character(input_string)
    input_string.length.times.with_index { |index| return input_string[index] if input_string[index] == input_string[index + 1] }
  end

  def reverse_words(input_string)
    input_string = input_string.split(' ')
    new_array = []
    index = -1
    input_string.each { |word| new_array << input_string[index] && index -= 1 }
    new_array.join(' ')
  end

  def palindrome(input_string)
    input_string == input_string.reverse

    # without reverse
    # reversed = []
    # split_array = input_string.split('')
    # input_string.length.times { reversed << split_array.pop }
    # input_string == reversed.join
  end

  def hamming(input_string1, input_string2)
    (input_string1.chars - input_string2.chars).length
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