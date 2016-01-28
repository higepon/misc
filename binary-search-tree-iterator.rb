# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator
    # @param {TreeNode} root
    def initialize(root)
      @stack = []
      node = root
      while node != nil
        @stack.push(node)
        node = node.left
      end
    end

    # @return {Boolean}
    def has_next
      return !(@stack.empty?)
    end

    # @return {Integer}
    def next
      node = @stack[@stack.size - 1]
      @stack.remove_at(@stack.size - 1)
      n = node.right
      while n != nil
        @stack.push(n)
        node = node.left
      end
      return node.val
    end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end
