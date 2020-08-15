# frozen_string_literal: true

class ValidPalindrome
  def is_palindrome(s)
    slen = s.size
    i = 0
    j = slen - 1
    while i < j
      unless is_alphanumeric(s[i])
        i += 1
        next
      end
      unless is_alphanumeric(s[j])
        j -= 1
        next
      end
      return false unless s[i].downcase == s[j].downcase

      i += 1
      j -= 1
    end
    true
  end

  # we can use char =~ /[[:alnum:]]/ instead of is_alphanumeric function but it costs performance
  def is_alphanumeric(char)
    is_number(char) || is_letter(char)
  end

  def is_number(n)
    n.ord >= 48 && n.ord <= 57
  end

  def is_letter(l)
    is_capital_letter(l) || is_small_letter(l)
  end

  def is_capital_letter(cl)
    cl.ord >= 65 && cl.ord <= 90
  end

  def is_small_letter(sl)
    sl.ord >= 97 && sl.ord <= 122
  end
end
