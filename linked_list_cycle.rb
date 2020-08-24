# frozen_string_literal: true

class LinkedListCycle
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
  def hasCycle(head)
    hash = {}
    p1 = head
    until p1.nil?
      if !hash[p1.object_id].nil?
        return true
      else
        hash[p1.object_id] = true
      end

      p1 = p1.next
    end
    false
  end
end
