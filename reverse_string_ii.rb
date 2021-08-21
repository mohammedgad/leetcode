# frozen_string_literal: true

class ReverseStringII
  # @param {String} s
  # @param {Integer} k
  # @return {String}
  def reverse_str(s, k)
    k = s.length if k > s.length
    p1 = 0
    p2 = p1 + k - 1
    swap = true

    while p1 < s.length && p2 < s.length
      if p1 >= p2
        p1 += (k * 1.0 / 2).ceil
        p2 = p1 + k - 1
        p2 = s.length - 1 if p2 > s.length
        swap = !swap
        next
      end

      if swap
        temp = s[p1]
        s[p1] = s[p2]
        s[p2] = temp
      end

      p1 += 1
      p2 -= 1
    end
    s
  end
end
