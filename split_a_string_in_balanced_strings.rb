# frozen_string_literal: true

class SplitAStringInBalancedStrings
  # @param {String} s
  # @return {Integer}
  def balanced_string_split(s)
    i = 0
    balance = 0
    count = 0
    while i < s.length
      balance += 1 if s[i] == 'R'
      balance -= 1 if s[i] == 'L'
      count += 1 if balance.zero?
      i += 1
    end
    count
  end
end
