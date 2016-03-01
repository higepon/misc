# Say you have an array for which the ith element is the price of a given stock on day i.

# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

# dp[k] = max(dp[k - 1], dp[k - 1] + prices[k] - prices[k - 1])
# dp[0] = 0
# dp[1] = prices[0]

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  if prices.empty?
    return 0
  end
  dp = Array.new(prices.size)
  dp[0] = 0
  for i in 1...prices.size
    dp[i] = [dp[k - 1], dp[k - 1] + prices[i] - prices[i - 1]].max
  end
  return dp[prices.size - 1]
end
