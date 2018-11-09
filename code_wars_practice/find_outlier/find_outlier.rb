def find_outlier(integers)
    
    count_even = integers.select { |num| num.even? }.length
    if count_even >= 2 then
        answer = integers.select {|i| i % 2 != 0 }[0]
        puts answer.to_s

    else 
        answer = integers.select {|i| i % 2 == 0}[0]
    end

    answer

end
