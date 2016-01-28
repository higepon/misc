# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  val = numerator / denominator
  ret = ''
  if val < 0
    ret = '-'
  end
  ret = ret + val.to_s

  remainder = numerator % denominator
  if remainder == 0
    return ret
  else
    ret = ret + "."
  end
  remainder = remainder * 10
  seen = {remainder => ret.size}
  while remainder != 0
    val = remainder / denominator
    ret = ret + val.to_s
    remainder = remainder % denominator
    if remainder == 0
      return ret
    else
      remainder = remainder * 10
    end
    if seen[remainder]
      tmp = ret[seen[remainder]].chr
      ret[seen[remainder]] = '('
      ret = ret + tmp.to_s + ')'
      return ret
    else
      seen[remainder] = ret.size
    end
  end
end

p fraction_to_decimal(1, 2)
p fraction_to_decimal(2, 1)
p fraction_to_decimal(2, 3)
