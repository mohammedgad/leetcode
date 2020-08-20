# frozen_string_literal: true

class ReverseLinkedListWithArray
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
    node = head
    arr = []
    until node.nil?
      arr.push node.val
      node = node.next
    end

    node = head
    until arr.empty?
      node.val = arr.pop
      node = node.next
    end
    head
  end
end
