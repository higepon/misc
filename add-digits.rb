# Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

# For example:

# Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.

# @param {Integer} num
# @return {Integer}
def add_digits(num)
  s = num.to_s
  while s.size > 1
    ret = 0
    for i in 0...s.size
      ret = ret + s[i].to_i
    end
    s = ret.to_s
  end
  return s.to_i
end
