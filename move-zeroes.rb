# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  for i in 0...nums.size
    num = nums[i]
    if num == 0
      for j in (i + 1)...nums.size
        next_num = nums[j]
        if next_num != 0
          nums[i] = next_num
          nums[j] = num
          break
        end
      end
    end
  end
end
