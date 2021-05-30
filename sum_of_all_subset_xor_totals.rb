# frozen_string_literal: true

class SumOfAllSubsetXorTotals
  # @param {Integer[]} nums
  # @return {Integer}
  def subset_xor_sum(nums)
    combinations = []
    i = 1
    while i <= nums.length
      xor = nums.combination(i).map do |a|
        a.reduce(0) { |sum, n| n ^ sum }
      end
      combinations.push xor
      i += 1
    end
    combinations.flatten.sum
  end
end
