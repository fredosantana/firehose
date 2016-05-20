class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
 
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
  #previous = nil
  while list
    current_node = list
    next_node = current_node.next_node
    current_node.next_node = previous
    list = next_node
    previous = current_node
end

  current_node
end
 
node5 = LinkedListNode.new(36)
node4 = LinkedListNode.new(51, node5) 
node1 = LinkedListNode.new(27, node4)
node2 = LinkedListNode.new(18, node1)
node3 = LinkedListNode.new(15, node2)


print_values(node3)


revlist = reverse_list(node3)

print_values(revlist)
