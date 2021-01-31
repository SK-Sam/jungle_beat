require 'minitest/autorun'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")

    assert_equal node.data, "plop"
    assert_nil node.next_node
  end
end