class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end
  
  def append(node)
    node.next_node = @head
    @head = node
  end

  
end