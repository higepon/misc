# @param {Integer} n
# @return {String}
def count_and_say(n)
  if n == 1
    return "1"
  end
  prev = count_and_say(n - 1)
  ret = ''
  currentVal = 0
  num = 0
  for i in 0...prev.size
    ch = prev[i]
    if num == 0
      currentVal = ch
      num = 1
    elsif ch == currentVal
      num = num + 1
    else
      ret = "#{ret}#{num}#{currentVal}"
      num = 1
      currentVal = ch
    end
    if i == prev.size - 1
      ret = "#{ret}#{num}#{currentVal}"
      num = 0
    end
  end
  return ret
end
