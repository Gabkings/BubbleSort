# rubocop: disable Metrics/MethodLength
# frozen_string_literal: true

def bubble_sort(array)
  array_length = array.size
  array if array_length <= 1
  loop do
    swapped = false
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
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
  sorted_array
end

bubble_sort_by(%w[hi hello hey hi]) do |left, right|
  left.length - right.length
end

unsorted_array = [11, 5, 7, 6, 15]
p bubble_sort(unsorted_array)

# rubocop: enable Metrics/MethodLength
