require 'AlgoLib/node'
class LinkedList

  def initialize
    @head = Node.new
    @head.next = nil
  end

  def head
    @head
  end

  def insert(element)
    node = Node.new
    node.data = element
    tail.next = node
  end

  def tail(node = @head)
    return node if node.next == nil
    return tail(node.next)
  end

  def detect_loop

  end


  def print_list(node = @head)
    p node.data
    return node if node.next == nil
    return print_list(node.next)
  end

  def mid
    node = @head
    mid = @head
    count = 0
    while node.next != nil
      node = node.next
      mid = mid.next unless (count % 2) == 0
      count +=1
    end
    puts "the middle element is #{mid.data}"
  end
end