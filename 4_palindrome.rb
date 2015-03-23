require 'pry'

def is_palindrome?(num)
  num.to_s == num.to_s.reverse ? true : false
end


def largest_palindrome(num_digits)
  # define your start,end,and range
  start_point = ('1' + ('0' * (num_digits - 1))).to_i
  end_point = ('9' * num_digits).to_i
  range_array = (start_point...end_point).to_a

  # find all permutations of possible pairs in the range
  perms = range_array.permutation(2).to_a
  # find the permutation pairs that produce a palindrome
  result = 0
  perms.each do |perm|
    prod = perm[0] * perm[1]
    if is_palindrome?(prod) && prod > result
      result = prod
    end
  end
  
  return result

end

p largest_palindrome(3)