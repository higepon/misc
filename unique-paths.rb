# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  if m == 1 || n == 1
    return 1
  end

  dp = Array.new(m) { Array.new(n) }
  dp[0][0] = 1
  dp[0][1] = 1
  dp[1][0] = 1
  for i in 0...m
    for j in 0...n
      if i == 0 && j != 0
        dp[i][j] = dp[i][j - 1]
      elsif j == 0 && i != 0
        dp[i][j] = dp[i - 1][j]
      elsif i == 0 && j == 0
        dp[0][0] = 1
      else
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      end
    end
  end
  return dp[m - 1][n - 1]
end
