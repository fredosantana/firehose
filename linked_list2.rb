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

	def reverse_list(list_item, previous = nil)
  	current_next_node = list_item.next_node
  	list_item.next_node = previous
  if current_next_node
    reverse_list(current_next_node, list_item)
  else
    list_item
  end
end


node5 = LinkedListNode.new(36)
node4 = LinkedListNode.new(51, node5) 
node1 = LinkedListNode.new(27, node4)
node2 = LinkedListNode.new(18, node1)
node3 = LinkedListNode.new(15, node2)

 
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)