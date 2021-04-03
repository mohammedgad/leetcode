# frozen_string_literal: true

class MeanofArrayAfterRemovingSomeElements
  def trim_mean(arr)
    arr = arr.sort!
    min_max_length = arr.length * 0.05

    arr = arr[min_max_length..arr.length - 1 - min_max_length]

    arr.sum.to_f / arr.length
  end
end
