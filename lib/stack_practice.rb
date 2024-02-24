'''
Implementation of a stack using a linked list
'''

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end

class LLStack
  def initialize
    @head = nil
    @size = 0
  end

  def push(new_data)
    @head = Node.new(new_data, @head)
    @size += 1
  end

  def pop
    if @size > 0
      data_to_return = @head.data
      @head = @head.next_node
      @size -= 1
      return data_to_return
    end
  end

  def peek
    if @size > 0
      return @head.data
    end
  end
end
