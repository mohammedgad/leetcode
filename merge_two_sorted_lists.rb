# frozen_string_literal: true

class MergeTwoSortedLists
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
  def merge_two_lists(l1, l2)
    return l1 if l2.nil?
    return l2 if l1.nil?

    dummy = ListNode.new(-1)
    head = dummy
    while !l1.nil? && !l2.nil?
      if l1.val < l2.val
        dummy.next = l1
        l1 = l1.next
      else
        dummy.next = l2
        l2 = l2.next
      end
      dummy = dummy.next
    end
    dummy.next = if !l1.nil?
                   l1
                 else
                   l2
                 end

    head.next
  end
end
