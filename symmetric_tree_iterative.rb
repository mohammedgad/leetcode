# frozen_string_literal: true

class SymmetricTreeIterative
  # Definition for a binary tree node.
  # class TreeNode
  #     attr_accessor :val, :left, :right
  #     def initialize(val = 0, left = nil, right = nil)
  #         @val = val
  #         @left = left
  #         @right = right
  #     end
  # end
  # @param {TreeNode} root
  # @return {Boolean}
  def is_symmetric(root)
    return true if root.nil?

    right_stack = [root.right]
    left_stack = [root.left]
    until right_stack.empty? && left_stack.empty?
      right_node = right_stack.pop
      left_node = left_stack.pop
      return false if right_node&.val != left_node&.val

      right_stack << right_node.right unless right_node.nil?
      right_stack << right_node.left unless right_node.nil?
      left_stack << left_node.left unless left_node.nil?
      left_stack << left_node.right unless left_node.nil?
    end
    true
  end
end
