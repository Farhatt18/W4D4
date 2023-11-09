def bad_two_sum?(arr, target_sum) #O(n^2)

    arr.each_with_index do |el1,idx1|
        arr.each_with_index do |el2,idx2|
            if idx2 > idx1 && el1 + el2 == target_sum
                return true 
            end
        end
    end
    return false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr,target_sum)
    return nil if 
end

