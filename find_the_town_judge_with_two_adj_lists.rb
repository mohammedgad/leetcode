# frozen_string_literal: true

class FindTheTownJudgeWithTwoAdjLists
  def find_judge(n, trust)
    trusted = {}
    trusts = {}
    judge = -1
    return 1 if trust.empty? && n == 1

    i = 0
    while i < trust.length
      if trusted[trust[i][1]].nil?
        trusted[trust[i][1]] = [trust[i][0]]
      else
        trusted[trust[i][1]] += [trust[i][0]]
      end

      if trusts[trust[i][0]].nil?
        trusts[trust[i][0]] = [trust[i][1]]
      else
        trusts[trust[i][0]] += [trust[i][1]]
      end
      i += 1
    end

    trusted.each do |k, v|
      judge = k if v.length == n - 1 && trusts[k].nil?
    end

    judge
  end
end
