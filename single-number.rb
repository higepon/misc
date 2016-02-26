# Given an array of integers, every element appears twice except for one. Find that single one.
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  seen = {}
  for num in nums
    if seen[num]
      seen.delete(num)
    else
      seen[num] = true
    end
  end
  seen.each {|key, value|
    return key
  }
end
