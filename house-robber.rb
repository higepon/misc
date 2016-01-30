# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  if nums.empty?
    return 0
  elsif nums.size == 1
    return nums[0]
  end
  dp = Array.new
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max
  for i in 2...nums.size
    dp[i] = [dp[i - 2] + nums[i], dp[i - 1]].max
  end
  return dp[nums.size - 1]
end
