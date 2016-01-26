# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  if nums.empty?
    return 0
  end
  index = 0
  for i in 0...nums.size
    num = nums[i]
    prev_num = i > 0 ? nums[i - 1] : nil
    if prev_num != nil && num == prev_num
      # nop
    else
      nums[index] = num
      index = index + 1
    end
  end
  return index
end
