# frozen_string_literal: true

class AddTwoNumbers
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val = 0, _next = nil)
  #         @val = val
  #         @next = _next
  #     end
  # end
  # @param {ListNode} l1
  # @param {ListNode} l2
  # @return {ListNode}
  def add_two_numbers(l1, l2)
    p1 = l1
    p2 = l2
    curry = 0
    p3 = nil
    while p1 || p2
      p1_val = p1&.val.nil? ? 0 : p1.val
      p2_val = p2&.val.nil? ? 0 : p2.val
      sum = p1_val + p2_val + curry
      curry = 0
      if sum >= 10
        curry = sum / 10
        sum = sum % 10
      end
      p3 = ListNode.new(sum, p3)
      p1 = p1&.next
      p2 = p2&.next
    end

    p3 = ListNode.new(curry, p3) if curry.positive?

    # reverse sum list
    head = nil
    while p3
      temp = p3.next
      p3.next = head
      head = p3
      p3 = temp
    end

    head
  end
end
