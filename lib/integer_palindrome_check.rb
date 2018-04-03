# 3/29/18
require 'pry'

# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil || number < 0
  return true if number < 10 && number >= 0
  i = 1
  length = number.to_s.size
  # Math log 10

  (length / 2).times do
    if (number / i) % 10 != (number % 10 ** length) / 10 ** (length - 1)
      return false
    else
      i *= 10
      length -= 1
    end
  end
  return true
end
