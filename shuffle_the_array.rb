# frozen_string_literal: true

class ShuffletheArray
  # @param {Integer[]} nums
  # @param {Integer} n
  # @return {Integer[]}
  def shuffle(nums, n)
    i = 0
    j = 0
    new_arr = []
    while i < nums.length / 2
      new_arr[j] = nums[i]
      new_arr[j + 1] = nums[i + n]
      i += 1
      j += 2
    end
    new_arr
  end
end
