require 'rspec'

class BasicNumber
  def primes(input_number)
    count = 2
    until count == input_number
      if input_number % count == 0
        return false
      end
      count += 1
    end
    return true
  end

  def fizzbuzz(input_number)
    count = 1
    while count <= input_number
      output = ''
      output += 'Fizz' if count % 3 == 0
      output += 'Buzz' if count % 5 == 0
      puts (output != '' ? output : count)
      count += 1
    end
  end

  def leap_year(input_year)
    input_year % 400 == 0 || input_year % 100 != 0 && input_year % 4 == 0
  end

  def fibonacci(input_number)
    fibonacci_array = [0, 1]
    count = input_number
    while count > 1
      fibonacci_array << fibonacci_array[-2] + fibonacci_array[-1]
      count -= 1
    end
    fibonacci_array[input_number]
  end

  def roman_numerals_to_integer(input_string)
    roman_numeral = ''

    # Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

    # Symbol Value
    # I 1
    # V 5
    # X 10
    # L 50
    # C 100
    # D 500
    # M 1000
    # For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.

    # Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

    # I can be placed before V (5) and X (10) to make 4 and 9.
    # X can be placed before L (50) and C (100) to make 40 and 90.
    # C can be placed before D (500) and M (1000) to make 400 and 900.
    # Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.

    # Example 1:

    # Input: "III"
    # Output: 3
    # Example 2:

    # Input: "IV"
    # Output: 4
    # Example 3:

    # Input: "IX"
    # Output: 9
    # Example 4:

    # Input: "LVIII"
    # Output: 58
    # Explanation: L = 50, V= 5, III = 3.
    # Example 5:

    # Input: "MCMXCIV"
    # Output: 1994
    # Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
  end

  def multiples_of_3_and_5(input_number)
    sum = 0
    index = 1
    while index < input_number
      if index % 5 == 0 || index % 3 == 0
        sum += index
      end
      index += 1
    end
   sum
  end

  def collatz_conjecture(input_number)
    counter = 0
    until input_number == 1
      if input_number % 2 == 0
        input_number = input_number / 2
        counter += 1
      else
        input_number = input_number * 3 + 1
        counter += 1
      end
    end
    counter
  end
end


RSpec.describe BasicNumber do

  let(:algorithm) { BasicNumber.new }  

  describe "#primes" do
    it "should return true when given 2 " do
      expect(algorithm.primes(2)).to eq(true)
    end

    it "should return true when given 7 " do
      expect(algorithm.primes(7)).to eq(true)
    end

    it "should return true when given 199 " do
      expect(algorithm.primes(199)).to eq(true)
    end

    it "should return false when given 4 " do
      expect(algorithm.primes(4)).to eq(false)
    end

    it "should return false when given 22 " do
      expect(algorithm.primes(22)).to eq(false)
    end

    it "should return false when given 200 " do
      expect(algorithm.primes(200)).to eq(false)
    end

    it "should return true when given 541 " do
      expect(algorithm.primes(541)).to eq(true)
    end

    it "should return false when given 542 " do
      expect(algorithm.primes(542)).to eq(false)
    end
  end

  describe "#leap_year" do
    it "should return true when given 10 " do
      expect(algorithm.leap_year(1996)).to eq(true)
    end

    it "should return true when given 2000 " do
      expect(algorithm.leap_year(2000)).to eq(true)
    end

    it "should return false when given 12 " do
      expect(algorithm.leap_year(1900)).to eq(false)
    end

    it "should return false when given 3 " do
      expect(algorithm.leap_year(1997)).to eq(false)
    end
  end

  describe "#fibonacci" do
    it "should return 3 when given 4 " do
      expect(algorithm.fibonacci(4)).to eq(3)
    end

    it "should return 0 when given 0 " do
      expect(algorithm.fibonacci(0)).to eq(0)
    end

    it "should return 144 when given 12 " do
      expect(algorithm.fibonacci(12)).to eq(144)
    end

    it "should return 8944394323791464 when given 78 " do
      expect(algorithm.fibonacci(78)).to eq(8944394323791464)
    end
  end

  describe "#roman_numerals_to_integer" do
    it "should return 3 when given 'III' " do
      expect(algorithm.roman_numerals_to_integer("III")).to eq(3)
    end

    it "should return 4 when given 'IV' " do
      expect(algorithm.roman_numerals_to_integer("IV")).to eq(4)
    end

    it "should return 9 when given 'IX' " do
      expect(algorithm.roman_numerals_to_integer("IX")).to eq(9)
    end

    it "should return 58 when given 'LVIII' " do
      expect(algorithm.roman_numerals_to_integer("LVIII")).to eq(58)
    end

    it "should return 1994 when given 'MCMXCIV' " do
      expect(algorithm.roman_numerals_to_integer("MCMXCIV")).to eq(1994)
    end
  end

  describe "#multiples_of_3_and_5" do
    it "should return 23 when given 10 " do
      expect(algorithm.multiples_of_3_and_5(10)).to eq(23)
    end

    it "should return 78 when given 20 " do
      expect(algorithm.multiples_of_3_and_5(20)).to eq(78)
    end

    it "should return 9168 when given 12 " do
      expect(algorithm.multiples_of_3_and_5(200)).to eq(9168)
    end

    it "should return 0 when given 3 " do
      expect(algorithm.multiples_of_3_and_5(3)).to eq(0)
    end
  end

  describe "#collatz_conjecture" do
    it "should return 3 when given 4 " do
      expect(algorithm.collatz_conjecture(12)).to eq(9)
    end

    it "should return 0 when given 0 " do
      expect(algorithm.collatz_conjecture(6)).to eq(8)
    end

    it "should return 144 when given 12 " do
      expect(algorithm.collatz_conjecture(25)).to eq(23)
    end

    it "should return 8944394323791464 when given 78 " do
      expect(algorithm.collatz_conjecture(231)).to eq(127)
    end
  end

end