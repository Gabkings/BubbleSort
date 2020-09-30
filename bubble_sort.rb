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

            break if not swapped
    end
    return array_to_sort
end

