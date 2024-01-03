# Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

# We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

# You must solve this problem without using the library's sort function.

def sort_colors(nums)
    condition = true
    while condition do
    nums.each_with_index do |x,y|
    if nums[y+1] && x > nums[y+1]
    nums[y] = nums[y+1]
    nums[y+1] = x
    condition = true
    break
    else
    condition = false
    end
    end
    end
end
