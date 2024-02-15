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
  return 0 if root.nil?

  left_depth = max_depth(root.left) + 1
  right_depth = max_depth(root.right) + 1

  return left_depth >= right_depth ? left_depth : right_depth
end
