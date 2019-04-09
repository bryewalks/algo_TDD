require 'rspec'

class BasicArray

  def reduce_sum(input_array)
    input_array.reduce(:+)

    # without reduce
    # sum = 0
    # input_array.each { |number| sum += number }
    # sum
  end

  def select_less_than_100(input_array)
    input_array.select { |number| number < 100 }

    #without select
    # new_array = []
    # input_array.each { |number| new_array << number if number < 100 }
    # new_array
  end

  def map_double(input_array)
    input_array.map { |number| number * 2 }

    # without map
    # new_array = []
    # input_array.each { |number| new_array << (number * 2) }
    # new_array
  end

  def array_max(input_array)
    input_array.max

    # without max
    # max = input_array[0]
    # input_array.each { |number| max = number if number > max }
    # max
  end

  def reduce_product(input_array)
    input_array.reduce(:*)

    # without reduce
    # product = 1
    # input_array.each { |number| product = (number *= product) }
    # product
  end

  def reverse_array(input_array)
    input_array.reverse

    # without reverse
    # new_array = []
    # index = -1
    # input_array.length.times { new_array << input_array[index] && index -= 1 }
    # new_array
  end

  def skip_it(input_array)
    new_array = []
    pick_it = 0
    input_array.each.with_index do |number, index|
      if pick_it == index
        new_array << number
        pick_it = (index + number)
      end
    end
    new_array
  end

end 


RSpec.describe BasicArray do
  
  algorithm = BasicArray.new

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