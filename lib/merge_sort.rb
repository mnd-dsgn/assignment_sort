def merge_sort(array) 
  return array if array.length <= 1 


  mid_point = array.length / 2 
  left_arr = array[0..mid_point - 1]
  right_arr = array[mid_point..-1]

 

  left_arr = merge_sort(left_arr)
  right_arr = merge_sort(right_arr)

  merge(left_arr, right_arr)

end


def merge(left_arr, right_arr)

    new_arr = []

    i = 0
    until left_arr.empty? && right_arr.empty?
      if left_arr[0].nil?
        new_arr << right_arr.shift
      elsif right_arr[0].nil?
        new_arr << left_arr.shift
      elsif left_arr[0] <= right_arr[0]
        new_arr << left_arr.shift
      elsif right_arr[0] <= left_arr[0]
        new_arr << right_arr.shift
      end
 
    end

    new_arr
 
end

