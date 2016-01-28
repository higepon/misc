# @param {Character[][]} grid
# @return {Integer}

def dfs(i, j, grid)
  if i >= grid.size || j >= grid[0].size || i < 0 || j < 0 || grid[i][j] != '1'
    return
  end
  grid[i][j] = '2'
  dfs(i + 1, j, grid)
  dfs(i - 1, j, grid)
  dfs(i, j + 1, grid)
  dfs(i, j - 1, grid)
end

def num_islands(grid)
  count = 0
  for i in 0...grid.size
    for j in 0...grid[0].size
      if grid[i][j] == '1'
        count = count + 1
        dfs(i, j, grid)
      end
    end
  end
  return count
end
