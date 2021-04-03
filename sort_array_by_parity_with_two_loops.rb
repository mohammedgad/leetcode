# frozen_string_literal: true

class SortArrayByParityWithTwoLoops
  # @param {Integer[]} a
  # @return {Integer[]}
  def sort_array_by_parity(a)
    sorted = []
    i = 0
    j = 0
    # even
    while i < a.length
      if a[i].even?
        sorted[j] = a[i]
        j += 1
      end
      i += 1
    end
    i = 0
    # odd
    while i < a.length
      if a[i].odd?
        sorted[j] = a[i]
        j += 1
      end
      i += 1
    end
    sorted
  end
end
