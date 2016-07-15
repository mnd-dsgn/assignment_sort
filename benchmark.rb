require_relative 'merge_sort'
require_relative 'bubble_sort'
require_relative 'insertion_sort'

def benchmark(array)
  puts "Bubble: #{time(array, 'bubble_sort')}"
end

def time(array, method)
  start = Time.now
  send(method.to_sym, array)
  finish = Time.now
  finish - start
end

# def bubble_time(array)
#   start = Time.now
#   bubble_sort(array)
#   finish = Time.now
#   finish - start
# end

# def merge_time(array)
#   start = Time.now
#   merge_sort(array)
#   finish = Time.now
#   finish - start
# end

# def insert_time(array)
#   start = Time.now
#   insertion_sort(array)
#   finish = Time.now
#   finish - start
# end
benchmark([3, 6, 2, 7])