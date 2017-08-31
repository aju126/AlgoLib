class Sorting
  def bubble(arr)
    @arr =  arr
    size = @arr.size - 2
    (0..size).each do |i|
      (0..size - i).each do |j|
        if(@arr[j] > @arr[j+1])
          temp = @arr[j]
          @arr[j] = @arr[j+1]
          @arr[j+1] = temp
        end
      end
    end
    @arr
  end

  
end