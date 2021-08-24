# frozen_string_literal: true

class ValidAnagramUsingHash
  # @param {String} s
  # @param {String} t
  # @return {Boolean}
  def is_anagram(s, t)
    return false if s.length != t.length

    s_map = Hash.new(0)
    t_map = Hash.new(0)
    is_anagram = true

    i = 0
    while i < s.length
      s_map[s[i]] += 1
      t_map[t[i]] += 1
      i += 1
    end

    i -= 1

    while i >= 0
      unless s_map[s[i]] == t_map[s[i]]
        is_anagram = false
        break
      end
      i -= 1
    end
    is_anagram
  end
end
