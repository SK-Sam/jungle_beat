class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
    @current_node = nil
    #@tail = nil
  end

  def append(data)
    node = Node.new(data)
    if @head == nil
      @head = node
      @current_node = @head
    else
      @current_node.next_node = node
      @current_node = node
    end
    @count += 1
  end

  def to_string
    return nil if @head == nil
    current_node = @head
    list_string = current_node.data.to_s
    while(current_node.next_node != nil)
      current_node = current_node.next_node
      list_string += " " + current_node.data.to_s
    end
    list_string
  end

end