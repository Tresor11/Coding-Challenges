# https://leetcode.com/problems/binary-tree-inorder-traversal/

def inorder_traversal(root)
  return [] if root.nil?

  result = [inorder_traversal(root.left)]
  result << root.val
  result << inorder_traversal(root.right)
  result.flatten.compact
end
