module Extended
  module St
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
  end
end
