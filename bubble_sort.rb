# Take array as a parameter

def bubble_sort(array_to_sort)
    array_length = array_to_sort.size
    return array if array_length <= 1

    # create a loop to loop through array and compare elements

    loop do
        swapped = false

        # subtract one because Ruby arrays are zero-index based
        (array_length-1).times do |i|
            if array_to_sort[i] > array_to_sort[i+1]
                array_to_sort[i], array_to_sort[i+1] = array_to_sort[i+1], array_to_sort[i]
                swapped = true
            end
        end

        break if not swapped
            
    end
    puts array_to_sort
end

unsorted_array = [11,5,7,6,15]
bubble_sort(unsorted_array)

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
    puts sorted_array
  end


  bubble_sort_by(%w[hi hello hey hi]) do |left, right|
    left.length - right.length
  end