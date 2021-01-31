class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    node = Node.new(data)
    @head = node if @head == nil
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