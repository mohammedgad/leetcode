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
        while(i < a.length)
            if a[i] % 2 == 0
                even[i_even] = a[i]
                i_even = i_even + 1
            else
                odd[i_odd] = a[i]
                i_odd = i_odd + 1
            end
            i = i + 1
        end
        even + odd
    end
end
