# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  ret = []
  carry = true
  for i in 0...digits.size
    d = digits[digits.size - 1 - i]
    if carry
      d = d + 1
      carry = false
    end
    if d >= 10
      carry = true
      d = d - 10
    end
    ret.push(d)
  end
  if carry
    ret.push(1)
  end
  return ret.reverse
end
