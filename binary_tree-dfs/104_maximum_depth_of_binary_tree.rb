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

  if root.left == nil && root.right == nil
    return 1
  end

  left = right = 1
  if root.left != nil
    left += max_depth(root.left)
  end
  if root.right != nil
    right += max_depth(root.right)
  end
  return left >= right ? left : right
end
