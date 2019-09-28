require 'benchmark'
require 'AlgoLib/sorting'

class Search
  def initialize(count = 10)
    @arr = []
    count.times { @arr << rand(count * 1000) }
    return nil
  end

  def linear(element, arr = @arr)
    temp_array = arr
    counter = 0
    for ele in temp_array do
      return counter if ele == element
      counter += 1
    end
    return -1
  end

  def sorted_array(arr = @arr)
    return Sorting.new.merge_sort(arr)
  end

  def binary(element, arr = sorted_array)
    if arr.count > 1
      mid = arr.count / 2
      p "Comparing element #{arr[mid]} with #{element}"
      return mid if arr[mid] == element
      p "Searching array #{arr} and current mid is #{mid}"
      arr[mid] > element ? binary(element, arr[0..mid - 1]) : binary(element, arr[mid..arr.count])
    else
      return -1
    end
  end
end