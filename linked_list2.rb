class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

	def reverse_list(list, previous=nil)

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

node5 = LinkedListNode.new("6 inch")
node4 = LinkedListNode.new("sorry", node5) 
node1 = LinkedListNode.new("dont hurt yourself", node4)
node2 = LinkedListNode.new("hold up", node1)
node3 = LinkedListNode.new("pray you catch me", node2)

 
print_values(node3)
