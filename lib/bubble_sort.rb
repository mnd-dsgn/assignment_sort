def bubble_sort(array)
  swap = true
  
  while swap
    swap = false
    i = 0
    while i < array.length - 1
    
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end

      i += 1
    end

  end
  array
end