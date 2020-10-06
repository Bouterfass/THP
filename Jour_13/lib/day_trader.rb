
def get_best_sell(array, index)
    i = index
    max = 0
    while i < array.length 
        if array[i] - array[index] > max 
            max = array[i] - array[index]
        end
        i += 1;
    end 
    
    return max 
end


def day_trader(array)
    max = 0
    tmp = 0
    array.each do |day|
        tmp = get_best_sell(array, day)
        if tmp > max
            max = tmp
        end
    end
    return max
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])