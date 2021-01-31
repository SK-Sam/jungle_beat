require 'minitest/autorun'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_nil list.head
    assert_equal 0, list.count
    assert_nil list.to_string
  end
  
  def test_it_can_append_data_as_a_node
    list = LinkedList.new
    list.append("doop")
    
    assert_equal list.head.data, "doop"
    assert_equal list.head.class, Node
    assert_nil list.head.next_node
    assert_equal 1, list.count
    assert_equal "doop", list.to_string
  end

  def test_it_can_append_multiple_nodes_and_traverse_properly
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    assert_equal "deep", list.head.next_node.data
    assert_equal 2, list.count
    assert_equal "doop deep", list.to_string
  end
end