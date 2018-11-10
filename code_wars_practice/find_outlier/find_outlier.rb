def find_outlier(integers)
    count_even = integers.select { |num| num.even? }.length

    if count_even >= 2 then
        answer = integers.select {|i| i % 2 != 0 }.first
    else 
        answer = integers.select {|i| i % 2 == 0}.first
    end
    
    answer
end
