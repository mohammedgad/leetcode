# frozen_string_literal: true

class SymmetricTreeRecursive
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
    return false unless check_is_symmetric(root.left, root.right)

    true
  end

  def check_is_symmetric(left, right)
    return true if left.nil? && right.nil?
    return false if left&.val != right&.val
    return false unless check_is_symmetric(left.right, right.left)
    return false unless check_is_symmetric(left.left, right.right)

    true
  end
end
