def merge_sort(array)
    if array.size <= 1
        return array
    end
    left_array = []
    right_array = []
    array.each_with_index do |element, index|
        if index < array.size/2
            left_array << element
        else
            right_array << element
        end
    end

    left = merge_sort(left_array)
    right = merge_sort(right_array)
    return merge(left, right)
end
def merge(left_array, right_array)
    result = []

    while !left_array.empty? && !right_array.empty?
        if left_array.first <= right_array.first
            result << left_array.first
            left_array.shift
        else
            result << right_array.first
            right_array.shift
        end
    end
    result.concat(left_array, right_array)
end

p merge_sort([6,5,3,1,8,7,2,4])