# frozen_string_literal: true

class LongestSubstringWithoutRepeatingCharacters
  # @param {String} s
  # @return {Integer}
  def length_of_longest_substring(s)
    # steps
    # extract unique substrings (sliding window)
    # get longest substring

    # return zero if s is an empty string
    return 0 if s == ''

    strings = []
    i = 0
    while i < s.length
      substring = +''
      j = i
      while j < s.length
        break if substring.include? s[j]

        substring << s[j]
        j += 1
      end
      strings.push substring
      i += 1
    end
    longest_substring = strings.max_by(&:length)
    longest_substring.length
  end
end
