# frozen_string_literal: true

class RichestCustomerWealth
  # @param {Integer[][]} accounts
  # @return {Integer}
  def maximum_wealth(accounts)
    richest_customer_wealth = 0
    i = 0
    while i < accounts.length
      customer_wealth = accounts[i].sum
      richest_customer_wealth = customer_wealth if customer_wealth > richest_customer_wealth
      i += 1
    end
    richest_customer_wealth
  end
end
