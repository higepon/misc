# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  a = a.reverse!
  b = b.reverse!
  len = [a.size, b.size].max
  ret = ''
  carry = 0
  for i in 0...len
    aVal = (i < a.size) ? a[i].to_i : 0
    bVal = (i < b.size) ? b[i].to_i : 0
    sum = aVal + bVal + carry
    if sum > 1
      sum = sum - 2
      carry = 1
    else
      carry = 0
    end
    ret = ret + sum.to_s
  end
  if carry > 0
    ret =  ret + "1"
  end
  return ret.reverse
end
