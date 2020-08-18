# frozen_string_literal: true

class RemoveNthNodeFromEndofList
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val)
  #         @val = val
  #         @next = nil
  #     end
  # end

  # @param {ListNode} node
  # @return {Void} Do not return anything, modify node in-place instead.

  def remove_nth_from_end(head, n)
    arr = []
    node = head
    until node.nil?
      arr << node
      node = node.next
    end
    # handling last element
    return nil if arr.size <= 1
    # handling first element
    return arr[1] if arr.size == n

    # handling the elements between the head and the tail
    arr[arr.size - 1 - n].next = arr[arr.size + 1 - n]
    head
  end
end
