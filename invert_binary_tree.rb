# frozen_string_literal: true

class InvertBinaryTree
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
  # @return {TreeNode}
  def invert_tree(root)
    return root if !root&.left && !root&.right

    temp = root.right
    root.right = root.left
    root.left = temp
    invert_tree(root.right)
    invert_tree(root.left)
    root
  end
end
