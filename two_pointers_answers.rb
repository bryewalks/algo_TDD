require 'rspec'

class TwoPointers

  def array_duplicate(input_array)

    input_array.each do |number|
      count = 0
      input_array.each do |number2|
        count += 1 if number == number2
      end
      return number if count == 2
    end

  end

  def array_intersection(input_array1, input_array2)
    intersect_array = []
    input_array1.each do |number|
      input_array2.each do |number2|
        intersect_array << number if number == number2
      end
    end
    intersect_array
  end

  def array_subset(input_array1, input_array2)
    counter = 0
    input_array1.each do |number|
      input_array2.each do |number2|
        counter += 1 if number == number2
      end
    end
    counter == input_array2.length
  end

  def missing_letter(input_string)

    # missing_letter = ''
    alphabet_hash = {}
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    alphabet.chars.each { |letter| alphabet_hash[letter] = 0 }
    input_string.chars.each { |letter| alphabet_hash[letter.downcase] += 1 if alphabet_hash[letter.downcase] }
    # alphabet_hash.each { |key,value| missing_letter = key if value == 0 }

    # missing_letter
    alphabet_hash.key(0)

  end

  def merge_arrays(input_array1, input_array2)
    

    # Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

    # Input :
    # A : [1 5 8]
    # B : [6 9]

    # Modified A : [1 5 6 8 9]
  end

  def etl_2(input_hash)
    # You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:

    # Input:

    # {
    # 1 => ["A", "E", "I", "O", "U"]
    # }

    # Output:

    # {
    # 'a' => 1,
    # 'e' => 1,
    # 'i' => 1,
    # 'o' => 1,
    # 'u' => 1
    # }
    # Input:

    # {
    # 1 => ["A", "E"],
    # 2 => ["D", "G"]
    # }

    # Output:

    # {
    # 'a' => 1,
    # 'd' => 2,
    # 'e' => 1,
    # 'g' => 2
    # }

    # Input:
    # {
    # 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    # 2 => ["D", "G"],
    # 3 => ["B", "C", "M", "P"],
    # 4 => ["F", "H", "V", "W", "Y"],
    # 5 => ["K"],
    # 8 => ["J", "X"],
    # 10 => ["Q", "Z"]
    # }

    # Output:

    # {
    # 'a' => 1,
    # 'b' => 3,
    # 'c' => 3,
    # 'd' => 2,
    # 'e' => 1,
    # 'f' => 4,
    # 'g' => 2,
    # 'h' => 4,
    # 'i' => 1,
    # 'j' => 8,
    # 'k' => 5,
    # 'l' => 1,
    # 'm' => 3,
    # 'n' => 1,
    # 'o' => 1,
    # 'p' => 3,
    # 'q' => 10,
    # 'r' => 1,
    # 's' => 1,
    # 't' => 1,
    # 'u' => 1,
    # 'v' => 4,
    # 'w' => 4,
    # 'x' => 8,
    # 'y' => 4,
    # 'z' => 10
    # }
  end

  def largest_palindrome_product
    number_1 = 999
    palindrome = 0
    while number_1 >= 100
      number_2 = 999
      while number_2 >= 100
        product = number_1 * number_2
        if product.to_s == product.to_s.reverse && product > palindrome
          palindrome = product
        end
        number_2 -= 1
      end
      number_1 -=1
    end
    palindrome
  end
  
end

RSpec.describe TwoPointers do

  let(:algorithm) { TwoPointers.new }  

  describe "#array_duplicate" do
    it "should return 2 when given [5, 2, 9, 7, 2, 6] " do
      expect(algorithm.array_duplicate([5, 2, 9, 7, 2, 6])).to eq(2)
    end

    it "should return 5 when given [5, 2, 9, 7, 5, 6] " do
      expect(algorithm.array_duplicate([5, 2, 9, 7, 5, 6])).to eq(5)
    end

  end

  describe "#array_intersection" do
    it "should return [1, 3, 5] when given [1, 2, 3, 4, 5], [1, 3, 5, 7, 9] " do
      expect(algorithm.array_intersection([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])).to eq([1, 3, 5])
    end

    it "should return [2, 5, 9] when given [2, 3, 4, 5, 9], [1, 2, 5, 7, 9] " do
      expect(algorithm.array_intersection([2, 3, 4, 5, 9], [1, 2, 5, 7, 9])).to eq([2, 5, 9])
    end

    it "should return [] when given [1, 2, 3, 4, 5], [6, 7, 8, 9, 10] " do
      expect(algorithm.array_intersection([1, 2, 3, 4, 5], [6, 7, 8, 9, 10])).to eq([])
    end
  end

  describe "#array_subset" do
    it "should return true when given [1, 2, 3, 4, 5, 6], [6, 3, 2] " do
      expect(algorithm.array_subset([1, 2, 3, 4, 5, 6], [6, 3, 2])).to eq(true)
    end

    it "should return true when given [1, 2, 3, 4, 5, 6], [6, 3, 7] " do
      expect(algorithm.array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])).to eq(false)
    end
  end

  describe "#missing_letter" do
    it "should return 'f' when given 'The quick brown box jumps over a lazy dog' " do
      expect(algorithm.missing_letter("The quick brown box jumps over a lazy dog")).to eq("f")
    end

    it "should return 'b' when given 'Pack my fox with five dozen liquor jugs' " do
      expect(algorithm.missing_letter("Pack my fox with five dozen liquor jugs")).to eq("b")
    end
  end

  describe "#merge_arrays" do
    it "should return [1, 5, 6, 8, 9] when given [1, 5, 8], [6, 9] " do
      expect(algorithm.merge_arrays([1, 5, 8], [6, 9])).to eq([1, 5, 6, 8, 9])
    end
  end

  describe "#etl_2" do
    it "should return {'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1} when given {1 => ['A', 'E', 'I', 'O', 'U']} " do
      expect(algorithm.etl_2({1 => ["A", "E", "I", "O", "U"]})).to eq({'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1})
    end

    it "should return {'a' => 1, 'd' => 2, 'e' => 1, 'g' => 2} when given {1 => ['A', 'E'], 2 => ['D', 'G']} " do
      expect(algorithm.etl_2({1 => ["A", "E"], 2 => ["D", "G"]})).to eq({'a' => 1, 'd' => 2, 'e' => 1, 'g' => 2})
    end

    it "should return {
                      'a' => 1,
                      'b' => 3,
                      'c' => 3,
                      'd' => 2,
                      'e' => 1,
                      'f' => 4,
                      'g' => 2,
                      'h' => 4,
                      'i' => 1,
                      'j' => 8,
                      'k' => 5,
                      'l' => 1,
                      'm' => 3,
                      'n' => 1,
                      'o' => 1,
                      'p' => 3,
                      'q' => 10,
                      'r' => 1,
                      's' => 1,
                      't' => 1,
                      'u' => 1,
                      'v' => 4,
                      'w' => 4,
                      'x' => 8,
                      'y' => 4,
                      'z' => 10
                      } 
                      when given
                      {
                      1 => ['A','E','I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
                      2 => ['D', 'G'],
                      3 => ['B', 'C', 'M', 'P'], 
                      4 => ['F', 'H', 'V', 'W', 'Y'], 
                      5 => ['K'], 
                      8 => ['J', 'X'], 
                      10 => ['Q', 'Z'] } " do
      expect(algorithm.etl_2({ 1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"], 2 => ["D", "G"], 3 => ["B", "C", "M", "P"], 4 => ["F", "H", "V", "W", "Y"], 5 => ["K"], 8 => ["J", "X"], 10 => ["Q", "Z"] })).to eq({'a' => 1,'b' => 3,'c' => 3,'d' => 2,'e' => 1,'f' => 4,'g' => 2,'h' => 4,'i' => 1,'j' => 8,'k' => 5,'l' => 1,'m' => 3,'n' => 1,'o' => 1,'p' => 3,'q' => 10,'r' => 1,'s' => 1,'t' => 1,'u' => 1,'v' => 4,'w' => 4,'x' => 8,'y' => 4,'z' => 10})
    end
  end

  describe "#largest_palindrome_product" do
    it "should return 906609 " do
      expect(algorithm.largest_palindrome_product).to eq(906609)
    end
  end

end

algorithm = TwoPointers.new
algorithm.merge_arrays([1, 5, 8], [6, 9])

