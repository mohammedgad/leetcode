# frozen_string_literal: true

class SortArrayByParityWithExtraSpace
  # @param {Integer[]} a
  # @return {Integer[]}
  def sort_array_by_parity(a)
    odd = []
    even = []
    i_odd = 0
    i_even = 0
    i = 0
    while i < a.length
      if a[i].even?
        even[i_even] = a[i]
        i_even += 1
      else
        odd[i_odd] = a[i]
        i_odd += 1
      end
      i += 1
    end
    even + odd
  end
end
