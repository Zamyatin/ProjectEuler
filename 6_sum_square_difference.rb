class Array
  def square_each_element
    self.map{ |x| x ** 2}
  end

  def square_and_sum
    self.square_each_element.inject(:+)
  end

  def sum_and_square
    (self.inject(:+)) ** 2
  end
end


arr = (1..100).to_a

p arr.sum_and_square - arr.square_and_sum
