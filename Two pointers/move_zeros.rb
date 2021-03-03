# frozen_string_literal: true

def move_zeroes(nums)
  i = 0
  count = 0
  while i < nums.size
    if (nums[i]).zero?
      nums.delete_at(i)
      count += 1
    else
      i += 1
    end
  end
  count.times do
    nums << 0
  end
  nums
end
