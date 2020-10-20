def sum_of_3_or_5_multiples(number = 1000)
    (1..number - 1).select{|x| x%3 == 0 || x%5 == 0}.inject(:+)
end

puts sum_of_3_or_5_multiples(10)