# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def add_path(s, val)
  if s.empty?
    s = val.to_s
  else
    s = s + "->" + val.to_s
  end
  return s
end

def traverse(node, path, paths)
  if node == nil
    return
  end

  path = add_path(path, node.val)
  if node.left == nil && node.right == nil
    paths.push(path)
    return
  end
  if node.left != nil
    traverse(node.left, path.clone, paths)
  end
  if node.right != nil
    traverse(node.right, path.clone, paths)
  end
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  paths = []
  traverse(root, '', paths)
  return paths
end
