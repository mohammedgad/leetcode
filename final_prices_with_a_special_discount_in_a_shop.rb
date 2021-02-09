# frozen_string_literal: true

class FinalPricesWithASpecialDiscountinAShop
# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  i = 0
  j = i + 1
  while(i < prices.length)
      while(j < prices.length)
          if prices[j] <= prices[i]
              prices[i] = prices[i] - prices[j]
              break
          end
          j = j + 1
      end
      i = i + 1
      j = i + 1
  end
  prices
end
end