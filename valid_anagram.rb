# frozen_string_literal: true

class ValidAnagram
  # We can solve the problem with one line
  # s.split(//).sort == t.split(//).sort
  # But it costs performance

  def is_anagram(s, t)
    return false if s.size != t.size

    sa = []
    ta = []

    i = 0
    while i < s.size
      sa << s[i]
      ta << t[i]
      i += 1
    end

    sa.sort!
    ta.sort!

    i = 0
    while i < sa.size
      return false if sa[i] != ta[i]

      i += 1
    end

    true
  end
end
