# frozen_string_literal: true

def contains_duplicate(nums)
  hash = {}
  nums.each do |x|
    if hash[x.to_s]
      return true
    else
      hash[x.to_s] = x
    end
  end
  false
end
