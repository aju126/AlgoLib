class Stack
  def initialize(size = 100)
    @size = size
    @top = -1
    @stack = []
    'created'
  end

  def push(value)
    fail StackFullError if stack_full?
    if value.kind_of?(Array)
      value.each do |x|
        @stack << x
        @top += 1
      end
    else
      @stack<<value
      @top += 1
    end
  end

  def pop
    fail StackEmptyError if stack_empty?
    @top -= 1
    @stack.pop
  end

  def reverse
    unless is_empty?
      element = pop
      reverse
      insert_at(element)
    end
  end

  def smallest
    ax_stack = Stack.new
    temp = pop
    smaller(ax_stack, temp, temp )
    top
  end

  def smaller(stack, value, small)
    unless is_empty?
      if small > value
        small = value
      end
      smaller(stack, pop, small)
      #transfer(stack)
    end
    small
    #push(small)
  end

  def top
    @stack[@top]
  end

  def is_empty?
    stack_empty?
  end

  def stack_size
    @top + 1
  end

  private

  def stack_full?
    (@top + 1) == @size ? true : false
  end

  def stack_empty?
    @top == -1 ? true : false
  end

  def insert_at(element)
    if is_empty?
      push(element)
    else
      temp = pop
      insert_at(element)
      push(temp)
    end
  end

  def transfer(stack)
    unless stack.is_empty? or stack_full?
      temp = stack.pop
      transfer(stack)
      push(temp)
    end
  end
end

class StackEmptyError < StandardError
  def initialize(msg='stack is empty')
    super(msg)
  end
end

class StackFullError < StandardError
  def initialize(msg='stack is full')
    super(msg)
  end
end