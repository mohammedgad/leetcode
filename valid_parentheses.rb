# frozen_string_literal: true

class ValidParentheses
  # @param {String} s
  # @return {Boolean}
  def is_valid(s)
    stack = []
    h = { '(' => 1, '{' => 2, '[' => 3, ')' => -1, '}' => -2, ']' => -3 }.freeze
    i = 0
    while i < s.length
      curr = h[s[i]]

      if stack.empty? || stack[-1] + curr != 0
        stack.push(curr)
      elsif (stack[-1] + curr).zero? && stack[-1] > curr
        stack.pop
      end

      i += 1
    end

    return true if stack.empty?

    false
  end
end
