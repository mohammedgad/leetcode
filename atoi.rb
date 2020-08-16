# frozen_string_literal: true

class Atoi
  def my_atoi(str)
    i = 0
    started = false
    sign = 1
    number = 0
    while i < str.size
      if white_space?(str[i]) && !started
        i += 1
        next
      end

      if str[i] == '-' && !started
        started = true
        i += 1
        sign = -1
      end

      if str[i] == '+' && !started
        started = true
        i += 1
      end

      started = true

      break if started && !number?(str[i])

      if started && number?(str[i])
        number *= 10
        number += str[i].to_i
      end

      i += 1
    end
    number *= sign
    process_int_size(number)
  end

  def process_int_size(number)
    return 2**31 - 1 if number > 2**31 - 1
    return -2**31 if number < -2**31

    number
  end

  def white_space?(char)
    return false if char.nil?

    char.ord == 32
  end

  def number?(char)
    return false if char.nil?

    char.ord >= 48 && char.ord <= 57
  end
end
