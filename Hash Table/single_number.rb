def single_number(nums)
    return nums[0] if nums.size < 2
    nums.sort!.each_with_index do |x,y|
        if x!=nums[y-1] && x!=nums[y+1]
            return x
            break
        end
    end
end