# def is_fibonacci?(num)
#   fibonacci_array = [0,1]
#   while (fibonacci_array[-1] < num)
#     fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
#   end
#   fibonacci_array[-1] == num ? true : false
# end

def sum_the_lies(max_num, fib_array = [0, 1])  
  next_num = fib_array[-1] + fib_array[-2]
  if next_num < max_num
    fib_array << next_num
    sum_the_lies(max_num, fib_array)
  else
    puts fib_array.find_all { |n| n.even? }.reduce(:+)
  end
end

sum_the_lies(4000000)