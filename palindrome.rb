def largest_palindrome_product
  number_1 = 999
  number_2 = 999
  product = 0
  while number_1 >= 100
    while number_2 >= 100
      product = number_1 * number_2
      p product
      if product == 580085
        p product
      end
      number_2 -= 1
    end
    number_1 -=1
  end
end


def collatz(number)
  counter = 0
  until number == 1
    if number % 2 == 0
      number = number / 2
      counter += 1
    else
      number = number * 3 + 1
      counter += 1
    end
  end
  counter

end

p collatz(2012)