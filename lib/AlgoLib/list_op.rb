module AlgoLib
  class ListOp

    def initialize
      @list = LinkedList.new
      for n in (0...20) do
        @list.insert(n)
      end
      @list
    end

    def list
      @list
    end

    def detect_cycle(linked_list)

    end

    def mid(linked_list = @list)
      ptr1, ptr2 = linked_list.head
      while ptr1.next != nil && ptr1.next.next != nil
        ptr1 = ptr1.next.next
        ptr2 = ptr2.next
      end
      return ptr2
    end
  end
end