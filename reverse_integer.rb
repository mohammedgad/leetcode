# frozen_string_literal: true

class ReverseInteger
  def reverse(x)
    reversed = 0

    if x < 0
      negative = true
      x *= -1
    end

    while x > 0
      reversed *= 10
      reversed += x % 10
      x /= 10
    end

    return 0 if reversed > 2**31 - 1 || reversed < -2**31
    return reversed * -1 if negative
    reversed
  end
end
