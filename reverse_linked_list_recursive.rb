# frozen_string_literal: true

class ReverseLinkedListRecursive
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
    p1 = nil
    p2 = head

    do_reverse(p1, p2)
  end

  def do_reverse(p1, p2)
    return p1 if p2.nil?

    temp = p2.next
    p2.next = p1
    p1 = p2
    p2 = temp
    do_reverse(p1, p2)
  end
end
