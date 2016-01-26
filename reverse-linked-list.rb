# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  node = head
  prev = nil
  while node != nil do
    next_node = node.next
    node.next = prev
    prev = node
    node = next_node
  end
  return prev
end
