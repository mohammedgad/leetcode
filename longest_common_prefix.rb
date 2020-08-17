# frozen_string_literal: true

class LongestCommonPrefix
  # iterate over the first word and compare the first word
  # characters to the whole list column by column
  # 2 pointers the slow pointer on the character (column)
  # and the fast pointer on the words (rows)
  # f l o w e r s
  # f l o w
  # f l i g h t
  # the longest common prefix is 'fl'

  def longest_common_prefix(strs)
    return '' if strs.empty?

    i = 0
    prefix = ''
    first_word = strs[0]
    while i < first_word.size
      j = 0

      j += 1 while j < strs.size && first_word[i] == strs[j][i]
      break unless j == strs.size

      prefix += first_word[i]
      i += 1
    end
    prefix
  end
end
