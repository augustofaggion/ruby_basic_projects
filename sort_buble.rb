def bubble_sort(array)
  n = array.length
  loop do
    swap = false
    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    break unless swap
  end
  return array
end




# Example usage:
array = [3, 1, 6, 2, 8, 4]
sorted_array = bubble_sort(array)
puts "Sorted array: #{sorted_array}"
