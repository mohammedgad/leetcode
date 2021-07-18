# frozen_string_literal: true

class LongestSubstringWithoutRepeatingCharactersMemoryOptimization
  # @param {String} s
  # @return {Integer}
  def length_of_longest_substring(s)
    # return zero if s is an empty string
    return 0 if s == ""
    
    max_substring = 0
    i = 0
    while i < s.length
        substring = +""
        j = i
        while j < s.length
            break if substring.include? s[j]
            substring << s[j]
            j += 1
        end
        max_substring = substring.length > max_substring ? substring.length : max_substring
        i += 1
    end
    max_substring
  end
end
