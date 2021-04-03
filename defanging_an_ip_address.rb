# frozen_string_literal: true

class DefangingAnIpAddress
  # @param {String} address
  # @return {String}
  def defang_i_paddr(address)
    i = 0
    result = ""
    while (i < address.length)
        result += address[i] == "." ? "[.]" : address[i]
        i = i + 1;
    end
    result
  end
end
