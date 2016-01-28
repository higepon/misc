

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  if needle.empty? && needle.empty?
    return 0
  elsif needle.size > haystack.size
    return -1
  end
  i = 0
  while i < haystack.size
    chl = haystack[i]
    j = 0
    allEqual = true
    k = i
    while k < haystack.size && j < needle.size
      if haystack[k] != needle[j]
        allEqual = false
        break
      end
      k = k + 1
      j = j + 1
    end
    if allEqual && j == needle.size
      return i
    else
      # no op
    end
    i = i + 1
  end
  return -1
end
