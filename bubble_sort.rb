# rubocop: disable all

def bubble_sort(array_to_sort)
  array_length = array_to_sort.size
  return array if array_length <= 1
  loop do
    swapped = false
    (array_length - 1).times do |i|
      if array_to_sort[i] > array_to_sort[i + 1]
        array_to_sort[i], array_to_sort[i + 1] = array_to_sort[i + 1], array_to_sort[i]
        swapped = true
      end
    end
    break unless swapped
  end
  return array_to_sort
end

def bubble_sort_by(sorted_array)
  check = true
  while check
    check = false
    (0...sorted_array.length - 1).each do |i|
      next unless yield(sorted_array[i], sorted_array[i + 1]).positive?
      sorted_array[i], sorted_array[i + 1] = sorted_array[i + 1], sorted_array[i]
      check = true
    end
  end
  return sorted_array
end

bubble_sort_by(%w[hi hello hey hi]) do |left, right|
  left.length - right.length
end

unsorted_array = [11, 5, 7, 6, 15]
p bubble_sort(unsorted_array)

# rubocop: enable all
