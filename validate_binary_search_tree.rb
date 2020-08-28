# frozen_string_literal: true

class ValidateBinarySearchTree
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
  def is_valid_bst(root)
    check_bst(root, nil, nil)
  end

  def check_bst(root, lower, upper)
    return true if root.nil?

    val = root.val
    return false if !lower.nil? && val <= lower
    return false if !upper.nil? && val >= upper

    return false unless check_bst(root.right, val, upper)
    return false unless check_bst(root.left, lower, val)

    true
  end
end
