# frozen_string_literal: true

# problem link
# https://leetcode.com/problems/pascals-triangle/

def generate(num_rows)
  return [[1]] if num_rows < 2

  arr = [[1]]
  (1...num_rows).each do |i|
    new_arr = Array.new(i + 1)
    new_arr.fill do |index|
      if index.zero? || index == new_arr.size - 1
        1
      else
        arr[i - 1][index] + arr[i - 1][index - 1]
      end
    end
    arr << new_arr
  end
  arr
end
