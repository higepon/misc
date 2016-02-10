# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  if amount == 0
    return 0
  end
  dp = Array.new(amount + 1, -1)
  dp[0] = 0

  for k in 0...amount + 1
    for i in 0...coins.size
      coin = coins[i]
      if k >= coin && dp[k - coin] != -1
        if dp[k] == -1
          dp[k] = dp[k - coin] + 1
        else
          dp[k] = [dp[k], dp[k - coin] + 1].min
        end
      end
    end
  end
  return dp[amount]
end

p coin_change([46,295,485,415,449,379,183,323], 5897)
