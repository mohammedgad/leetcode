# frozen_string_literal: true

class GroupAnagrams
  # @param {String[]} strs
  # @return {String[][]}
  def group_anagrams(strs)
    grouped_anagrams = {}
    i = 0
    while i < strs.length
      anagram_hash = Hash.new(0)
      j = 0

      while j < strs[i].length
        anagram_hash[strs[i][j]] += 1
        j += 1
      end

      grouped_anagrams[anagram_hash] = if grouped_anagrams[anagram_hash].nil?
                                         [strs[i]]
                                       else
                                         grouped_anagrams[anagram_hash] << strs[i]
                                       end

      i += 1
    end

    grouped_anagrams.values
  end
end
