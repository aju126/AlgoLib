class ArrayOp

  def reverse(arr)
    m = arr.count / 2
    x = arr.count - 1
    m.times.each do |i|
      arr = swap(arr, i, x - i)
    end
    arr
  end

  def swap(arr, x, y)
    temp = arr[x]
    arr[x] = arr[y]
    arr[y] = temp
    arr
  end
end