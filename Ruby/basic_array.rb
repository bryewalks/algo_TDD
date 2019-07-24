require 'rspec'

class BasicArray

  def reduce_sum(input_array)
    # Return the sum of all numbers in a given array.
  end

  def select_less_than_100(input_array)
    # Given an array of numbers, return a new array that contains all numbers from the original array that are less than 100.
  end

  def map_double(input_array)
    # Given an array of numbers, return a new array whose values are the original array’s value doubled.
  end

  def array_max(input_array)
    # Return the greatest value from an array of numbers.
  end

  def reduce_product(input_array)
    # Given an array of numbers, return the product of all the numbers.
  end

  def reverse_array(input_array)
    # Given an array, return a new array that contains the original array’s values in reverse.
  end

  def skip_it(input_array)
    # Given an array of numbers, return a new array in which only select numbers from the original array are included, based on the following details:

    # The new array should contain the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right of this one. If the next number is 4, then the next number after that is the one four spaces to the right of this 4. And so on and so forth until the end of the array is reached.
    # Input:
    # [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
    # Output:
    # [2, 3, 1, 2, 2, 1, 5, 2, 2]
  end

end 


RSpec.describe BasicArray do
  
  let(:algorithm) { BasicArray.new }
  
  describe '#reduce_sum' do
    it 'should return 10 when given [1,2,3,4]' do
      expect(algorithm.reduce_sum([1,2,3,4])).to eq(10)
    end

    it 'should return 20 when given [2,4,6,8]' do
      expect(algorithm.reduce_sum([2,4,6,8])).to eq(20)
    end

    it 'should return 0 when given [0]' do
      expect(algorithm.reduce_sum([0])).to eq(0)
    end

    it 'should return -10 when given [-1,-2,-3,-4]' do
      expect(algorithm.reduce_sum([-1,-2,-3,-4])).to eq(-10)
    end
  end

  describe '#select_less_than_100' do
    it 'should return [99, 88, 4, 50] when given [99,101,88,4,2000,50]' do
      expect(algorithm.select_less_than_100([99,101,88,4,2000,50])).to eq([99, 88, 4, 50])
    end

    it 'should return [50,-5,-1000] when given [50,10000,101,-5,-1000]' do
      expect(algorithm.select_less_than_100([50,10000,101,-5,-1000])).to eq([50,-5,-1000])
    end

    it 'should return [] when given [101,102,1000,2000,3000]' do
      expect(algorithm.select_less_than_100([101,102,1000,2000,3000])).to eq([])
    end
  end

  describe '#map_double' do
    it 'should return [8, 4, 10, 198, -8] when given [4, 2, 5, 99, -4]' do
      expect(algorithm.map_double([4, 2, 5, 99, -4])).to eq([8, 4, 10, 198, -8])
    end

    it 'should return [20000] when given [10000]' do
      expect(algorithm.map_double([10000])).to eq([20000])
    end
  end

  describe '#array_max' do
    it 'should return 20 when given [5,17,-4,20,12]' do
      expect(algorithm.array_max([5,17,-4,20,12])).to eq(20)
    end

    it 'should return -1 when given [-10,-100,-5,-1]' do
      expect(algorithm.array_max([-10,-100,-5,-1])).to eq(-1)
    end
  end

  describe '#reduce_product' do
    it 'should return 24 when given [1,2,3,4]' do
      expect(algorithm.reduce_product([1,2,3,4])).to eq(24)
    end

    it 'should return 24 when given [-1,-2,-3,-4]' do
      expect(algorithm.reduce_product([-1,-2,-3,-4])).to eq(24)
    end

    it 'should return 2400000000 when given [100,200,300,400]' do
      expect(algorithm.reduce_product([100,200,300,400])).to eq(2400000000)
    end
  end

  describe '#reverse_array' do
    it 'should return [5,4,3,2,1] when given [1,2,3,4,5]' do
      expect(algorithm.reverse_array([1,2,3,4,5])).to eq([5,4,3,2,1])
    end

    it "should return ['bugs','eat','you'] when given ['you','eat','bugs']" do
      expect(algorithm.reverse_array(['you','eat','bugs'])).to eq(['bugs','eat','you'])
    end

    it "should return ['hello','hi','hello'] when given ['hello','hi','hello']" do
      expect(algorithm.reverse_array(['hello','hi','hello'])).to eq(['hello','hi','hello'])
    end
  end

  describe '#skip_it' do
    it 'should return [2,3,1,2,2,1,5,2,2] when given [2,1,3,2,5,1,2,6,2,7,1,5,6,3,2,6,2,1,2]' do
      expect(algorithm.skip_it([2,1,3,2,5,1,2,6,2,7,1,5,6,3,2,6,2,1,2])).to eq([2,3,1,2,2,1,5,2,2])
    end

    it 'should return [2,8,1,9] when given [2,1,8,2,5,1,2,6,2,7,1,9,6,3,2,6,2,1,2]' do
      expect(algorithm.skip_it([2,1,8,2,5,1,2,6,2,7,1,9,6,3,2,6,2,1,2])).to eq([2,8,1,9])
    end

    it 'should return [200] when given [200,1,8,2,5,1,2,6,2,7,1,9,6,3,2,6,2,1,2]' do
      expect(algorithm.skip_it([200,1,8,2,5,1,2,6,2,7,1,9,6,3,2,6,2,1,2])).to eq([200])
    end

  end

end