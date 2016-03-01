# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  seen = {}
  max_key = nums[0]
  max_count = 1
  for i in 1...nums.size
    num = nums[i]
    if seen[num]
      seen[num] = seen[num] + 1
      if seen[num] > max_count
        max_key = num
        max_count = seen[num]
      end
    else
      seen[num] = 1
    end
  end
  return max_key
end
