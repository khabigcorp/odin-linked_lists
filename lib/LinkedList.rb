class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
  
  def append(node)
    node.next_node = @head
    @head = node

    @size += 1
  end

  def prepend(node)
    if !@tail.nil?
      @tail.next_node = node
    end
    @tail = node
    
    @size += 1
  end

  def size
    @size
  end

  def head
    @head.value
  end

  def tail
    @tail.value
  end

  def at(index)
    node = @head
    index.times { node = node.next_node }
    node
  end

  def pop
    self.at(@size-2).next_node = nil
    @tail = nil
  end
end