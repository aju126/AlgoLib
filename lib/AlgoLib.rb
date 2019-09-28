require "AlgoLib/version"
require 'AlgoLib/stack'
require 'AlgoLib/recursion'
require 'AlgoLib/sorting'
require 'AlgoLib/string_op'
require 'AlgoLib/array_op'
require 'AlgoLib/linked_list'
require 'AlgoLib/list_op'
require 'AlgoLib/search'

module AlgoLib
  # Your code goes here...
  def self.stack(size = 20)
    Stack.new(size)
  end

  def self.recursion
    Recursion.new
  end

  def self.sorting
    Sorting.new
  end

  def self.search
    Search.new
  end
  
  def self.str
    StringOp.new
  end

  def self.arr
    ArrayOp.new
  end

  def self.linked_list
    LinkedList.new
  end
end
