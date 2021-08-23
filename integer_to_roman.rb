# frozen_string_literal: true

class IntToRoman
  # @param {Integer} num
  # @return {String}
  def int_to_roman(num)
    mapper = [['M', 1000], ['CM', 900], ['D', 500], ['CD', 400], ['C', 100], ['XC', 90], ['L', 50], ['XL', 40], ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]]
    roman = ''
    i = 0
    while num.positive?
      if num >= mapper[i][1]
        num -= mapper[i][1]
        roman += mapper[i][0]
      else
        i += 1
      end
    end
    roman
  end
end
