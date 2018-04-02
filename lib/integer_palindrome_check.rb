# 3/29/18
require 'pry'

# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number == 0
  i = 1
  length = number.to_s.size
  j = (number / i) % 10
  k = (number % 10 ** length) / 10 ** (length - 1)

  if length == 1 && j == number
    return true
  elsif length > 1
    (length / 2).times do
      i *= 10
      length -= 1
      if j == k
        return true
      else
        return false
      end
    end
  end
end
