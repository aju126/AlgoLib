require 'benchmark'
class Sorting

  def initialize(val = 20)
    @arr = []
    val.times { @arr << rand }
    return nil
  end

  def report
    @bub, @sel, @mer = []
    Benchmark.bmbm do |x|
      x.report(bubble) {
        @bub = bubble
      }

      x.report(bubble) {
        @sel = selection
      }

      x.report(bubble) {
        @mer = merge_sort
      }
    end
    @bub == @sel && @sel == @mer ? 'works' : 'problem'
  end

  def bubble(arr = @arr)
    count = arr.count - 1
    return arr if count == 0
    (0..count).each do |i|
      (0..(count - i - 1)).each do |j|
        swap(arr, j, j+1) if arr[j] > arr[j + 1]
      end
    end
    arr
  end

  def insertion(arr = @arr)
    count = arr.count - 1
    (0..count).each do |i|
      element = @arr[i]
      j = i
      while(j < count && @arr[j + 1] < element )
        swap(@arr, @arr[j], element)
      end
    end
    @arr
  end


  def selection(arr = @arr)
    count = arr.count - 1
    i= 0
    while(i < count) do
      swap(arr, i, find_min(arr, i, count))
      i += 1
    end
    arr
  end

  def merge_sort(arr = @arr)
    return merge(arr)
  end

  def merge(arr = @arr)
    if(arr.count > 1)
      mid = arr.count / 2
      left = arr[0..mid - 1]
      right = arr[mid..arr.count]
      merge(left)
      merge(right)
      i = 0
      j = 0
      k = 0

      while i < left.count && j < right.count
        if left[i] < right[j]
          arr[k] = left[i]
          i += 1
        else
          arr[k] = right[j]
          j += 1
        end

        k +=1
      end

      while i < left.count
        arr[k] = left[i]
        i += 1
        k += 1
      end

      while j < right.count
        arr[k] = right[j]
        j += 1
        k += 1
      end
    end
    return arr
  end

  def find_min(arr, i , j)
    min = arr[i]
    indx = i
    ((i+ 1)..j).each do |x|
      if(arr[x] < min)
        min = arr[x]
        indx = x
      end
    end
    return indx
  end

  def swap(a, i, j)
    temp = a[i]
    a[i] = a[j]
    a[j] = temp
  end
end