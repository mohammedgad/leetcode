# frozen_string_literal: true

class FindTheTownJudgeWithAdjMatrix
  # @param {Integer} n
  # @param {Integer[][]} trust
  # @return {Integer}
  def find_judge(n, trust)
    judge = -1
    flag = 0
    # init adj matrix
    trust_array = Array.new(n, 0)
    i = 0
    while i < n
      trust_array[i] = Array.new(n, 0)
      i += 1
    end
    # construct trsut graph
    i = 0
    while i < trust.length
      trust_array[trust[i][0] - 1][trust[i][1] - 1] = 1
      i += 1
    end
    # search for judge
    i = 0
    while i < trust_array.length
      j = 0
      flag = 0
      while j < trust_array.length
        flag += trust_array[j][i]
        if j == (trust_array.length - 1) && flag == (n - 1)
          judge = i + 1 if trust_array[i].sum.zero?
        end

        break if judge.positive?

        j += 1
      end
      i += 1
    end

    judge
  end
end
