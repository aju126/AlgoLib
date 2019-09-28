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

  def move_zeros_to_end(arr)
    count = 0
    num = arr.count
    for i in (0..num)
      if arr[i] != 0
        arr[count] = arr[i]
        count += 1
      end
    end

    while count < num
      arr[count] = 0
      count += 1
    end
    arr
  end

  def alter_elements(arr)
    m = -1
    n = arr.count / 2
    pivot = a[i]
    for i in (0..(arr.count / 2)) do
      a[i] = pivot
      pivot = a[i]
      unless i % 2 == 0
        pivot = arr[i]
        arr[i] = arr[n]
        n += 1
      end

    end
    arr
  end

  def sort_012(arr)
    l = arr.count
    min = 0
    mid = 0
    max = l - 1
    while mid < max do
      mid += 1 if arr[mid] == arr[max]
      mid -=1 if arr[mid] == arr[min]
      if arr[mid] < arr[min]
        temp = arr[min]
        arr[min] = arr[mid]
        arr[mid] = temp
        min += 1
      elsif arr[mid] > arr[max]
        temp = arr[max]
        arr[max] = arr[mid]
        arr[mid] = temp
        max -= 1
      end
    end
    arr
  end
end