# frozen_string_literal: true

class FirstUniqueCharacter
  def first_uniq_char(s)
    h = {}

    i = 0
    while i < s.size
      h[s[i]].nil? ? h[s[i]] = 1 : h[s[i]] += 1
      i += 1
    end

    j = 0
    while j < s.size
      return j if h[s[j]] == 1

      j += 1
    end

    -1
  end
end
