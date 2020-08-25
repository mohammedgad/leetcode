# frozen_string_literal: true

class MaximumDepthBinaryTree
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
  # @return {Integer}
  def max_depth(root)
    traverse(root, 0)
  end

  def traverse(root, level)
    return level if root.nil?

    left = traverse(root.left, level + 1)
    right = traverse(root.right, level + 1)
    right > left ? right : left
  end
end
