# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

def bad_version(l, h)
  if l == h
    return h
  end
  m = (l + h) / 2
  if is_bad_version(m)
    return bad_version(l, m)
  else
    return bad_version(m + 1, h)
  end
end

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    return bad_version(0, n)
end
