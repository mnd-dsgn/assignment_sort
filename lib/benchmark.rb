require_relative 'merge_sort'
require_relative 'bubble_sort'
require_relative 'insertion_sort'

def benchmark(array)
  puts "Bubble: #{time(array, 'bubble_sort')}"
  puts "Merge: #{time(array, 'merge_sort')}"
  puts "Insertion: #{time(array, 'insertion_sort')}"
end

def time(array, method)
  start = Time.now
  send(method.to_sym, array)
  finish = Time.now
  finish - start
end

benchmark([3, 6, 2, 7, 234 , -5, 123, 6, 6] * 100)