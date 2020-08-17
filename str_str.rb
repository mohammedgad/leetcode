# frozen_string_literal: true

class StrStr
  def str_str(haystack, needle)
    return 0 if needle == ''
    return -1 if needle.size > haystack.size
    return 0 if needle.size == haystack.size && needle == haystack
    return -1 if needle.size == haystack.size && needle != haystack

    i = 0
    while i < haystack.size
      j = 0
      j += 1 while j < needle.size && haystack[i + j] == needle[j]

      return i if j == needle.size

      i += 1
    end
    -1
  end
end
