# frozen_string_literal: true

def find_max_consecutive_ones(nums)
  long = 0
  current = 0
  nums.each_with_index do |x, _y|
    if long.zero? && x == 1
      current = 1
      long = 1
    elsif x == 1
      current += 1
      long = current if current > long
    elsif x != 1
      current = 0
    end
  end
  long
end
