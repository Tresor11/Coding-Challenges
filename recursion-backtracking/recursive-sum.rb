# frozen_string_literal: true

# problem link:
# https://www.hackerrank.com/challenges/recursive-digit-sum/problem

def superDigit(n, k)
  return n if n.to_i <= 9

  temp = n.to_s
  sum = temp.split('').sum(&:to_i)
  sum *= k
  superDigit(sum, 1)
end
