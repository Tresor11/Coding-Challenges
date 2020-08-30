# frozen_string_literal: true

# problem link:
# https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

def rotLeft(a, d)
  new_arr = Array.new(a)
  l = a.size
  new_arr.each_with_index do |_x, y|
    new_arr[y] = a[(y + d) % l]
  end
  new_arr
  end
