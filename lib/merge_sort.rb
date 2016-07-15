def merge_sort(array) 
  return array if array.length == 1 


  mid_point = array.length / 2
  left_arr = array[0..mid_point]
  right_arr = arr[mid_point+1..-1]

  merge_sort(left_arr)
  merge_sort(right_arr)

  merge(left_arr, right_arr)

    # // mergeSort() the left half of the array

    # // mergeSort() the right half of the array

    # // merge() the two halves

    # // return the merged array
end


def merge(left_arr, right_arr)

    new_arr = []

    i = 0
    until left_arr.empty? && right_arr.empty?
      if left_arr[0].nil?
        new_arr << right_arr.shift
      elsif right_arr[0].nil?
        new_arr << left_arr.shift
      elsif left_arr[0] < right_arr[0]
        new_arr << left_arr.shift
      elsif right_arr[0] < left_arr[0]
        new_arr << right_arr.shift
      end
      print "#{left_arr} #{right_arr}"
      puts
    end
    new_arr
    puts new_arr
    # // compare leftArr[0] and rightArr[0]
    # // whichever is smaller, push it onto newArr    

    # // repeat the process, but don't reuse elements,
    # // until you have pushed all the elements from
    # // leftArr and rightArr onto newArr in sorted order

    # // return newArr
end