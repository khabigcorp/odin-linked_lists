class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end
  
  def append(node)
    node.next_node = @head
    @head = node
  end

  def prepend(node)
    if !@tail.nil?
      @tail.next_node = node
    end
    @tail = node
  end
end