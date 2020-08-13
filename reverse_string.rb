# frozen_string_literal: true

class ReverseString
  def reverse(s)
    slen = s.size
    i = 0
    while i < slen / 2
      temp = s[i]
      s[i] = s[slen - 1 - i]
      s[slen - 1 - i] = temp
      i += 1
    end
    s
  end
end
