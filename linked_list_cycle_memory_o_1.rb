# frozen_string_literal: true

class LinkedListCycleMemoryO1
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} head
  # @return {Boolean}

  # drop the next node till we reach
  # 1- nil or
  # 2- node equal node.next
  # if we achived the case where the next node is the same node I am on now that means it's a cycle
  # if we reach nil that means there's no cycle

  def hasCycle(head)
    p1 = head
    until p1&.next&.next.nil?
      p1.next = p1.next.next
      p1 = p1.next
      return true if p1 == p1.next
    end
    false
  end
end
