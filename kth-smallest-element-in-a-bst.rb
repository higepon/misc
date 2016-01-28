# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}

@index = nil
@val = nil

def dfs(node, k)
  if node == nil
    return
  end
  dfs(node.left, k)
  @index = @index + 1
  if @index == k
    @val = node.val
    return
  end
  dfs(node.right, k)
end

def kth_smallest(root, k)
  @index = 0
  dfs(root, k)
  return @val
end
