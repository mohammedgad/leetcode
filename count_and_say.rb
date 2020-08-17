# frozen_string_literal: true

class CountAndSay
  def count_and_say(n)
    array = ['1']
    (n - 1).times do
      array << read(array.last)
    end
    array.last
  end

  def read(n)
    i = 0
    frequency = 0
    read = ''
    while i < n.size
      value = n[i]
      frequency = 0
      while n[i] == value
        i += 1
        frequency += 1
        next
      end
      read += "#{frequency}#{value}"
    end
    read
  end
end
