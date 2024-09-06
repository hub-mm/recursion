# merge_sort.rb
# frozen_string_literal: true

def merge_sort(array)
  return array if array.length == 1

  middle = array.length / 2
  
  merge(merge_sort(array[0...middle]), merge_sort(array[middle..-1]))
end

def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  p result + left + right
end

merge_sort([1, 5, 3, 7, 3, 3, 9, 10, 5, 3])
merge_sort([100, 3625, 90, 5])
