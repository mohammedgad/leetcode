# frozen_string_literal: true

class ReverseLinkedListIterative
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val = 0, _next = nil)
  #         @val = val
  #         @next = _next
  #     end
  # end
  # @param {ListNode} head
  # @return {ListNode}
  def reverse_list(head)
    return head if head.nil? || head.next.nil?

    p1 = head
    p2 = p1.next
    p3 = p2.next

    until p2.nil?
      p2.next = p1
      p1 = p2
      p2 = p3
      p3 = p3.next unless p3.nil?
    end
    head.next = nil
    p1
  end
end
