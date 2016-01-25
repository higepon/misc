# @param {String} s
# @return {Boolean}
def is_valid(s)
  waitings = []
  for i in 0...s.size
    ch = s[i]
    if ch == '('
      waitings.push(')')
    elsif ch == '['
      waitings.push(']')
    elsif ch == '{'
      waitings.push('}')
    else
      if waitings.empty?
        return false
      else
        w = waitings[waitings.size - 1]
        waitings.delete_at(waitings.size - 1)
        if ch == w
          # ok
        else
          return false
        end
      end
    end
  end
  if waitings.empty?
    return true
  else
    return false
  end
end
