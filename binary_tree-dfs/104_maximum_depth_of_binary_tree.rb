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

  left = root.left
  right = root.right

  left_count = right_count = 1
  if left != nil
    left_count += max_depth(left)
  end
  if right != nil
    right_count += max_depth(right)
  end
  return left_count >= right_count ? left_count : right_count
end
