# @param {Integer[][]} obstacle_grid
# @return {Integer}
def unique_paths_with_obstacles(obstacle_grid)
  if !obstacle_grid || obstacle_grid[0].size == 0
  elsif obstacle_grid.size == 1 && obstacle_grid[0].size == 1
    return obstacle_grid[0][0] == 0 ? 1 : 0
  end
  m = obstacle_grid.size
  n = obstacle_grid[0].size
  dp = Array.new(m) { Array.new(n) }
  dp[0][0] = obstacle_grid[0][0] == 0 ? 1 : 0
  for i in 0...m
    for j in 0...n
      if obstacle_grid[i][j] == 1
        dp[i][j] = 0
      elsif i == 0 && j != 0
        dp[i][j] = dp[i][j - 1]
      elsif j == 0 && i != 0
        dp[i][j] = dp[i - 1][j]
      elsif j == 0 && i == 0
        dp[i][j] = 1
      else
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      end
    end
  end
  return dp[m - 1][n - 1]
end
