# frozen_string_literal: true

class PalindromeLinkedList
  # Definition for singly-linked list.
  # class ListNode
  #     attr_accessor :val, :next
  #     def initialize(val = 0, _next = nil)
  #         @val = val
  #         @next = _next
  #     end
  # end
  # @param {ListNode} head
  # @return {Boolean}
  def is_palindrome(head)
    return true if head.nil?

    # count
    p = head
    size = 0
    until p.nil?
      size += 1
      p = p.next
    end
    # tail
    tail = head
    tail = tail.next until tail.next.nil?
    # half
    half = head
    i = 0
    odd = size.even? ? 0 : 1
    while i < size / 2 + odd
      half = half.next
      i += 1
    end
    # reverse second half
    p1 = nil
    p2 = half
    until p2.nil?
      temp = p2.next
      p2.next = p1
      p1 = p2
      p2 = temp
    end
    # comapre
    until tail.nil?
      return false if head.val != tail.val

      head = head.next
      tail = tail.next
    end
    true
  end
end
