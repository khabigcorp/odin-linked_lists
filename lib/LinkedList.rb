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

  def contains?(value)
    node = @head
    while !node.nil?
      if (node.value == value)
        return true
      end
      node = node.next_node
    end

    return false
  end

  def find(value)
    node = @head
    index = 0
    while !node.nil?
      if (node.value == value)
        return index
      end
      index += 1
      node = node.next_node
    end

    return nil
  end

  def to_s
    super_string = ""
    node = @head
    while !node.nil?
      super_string += "( #{node.value} ) -> "
      node = node.next_node
    end

    super_string += "nil"
    super_string
  end
end