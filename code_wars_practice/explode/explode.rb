def explode (value)
    score = 0
    if(value[0].is_a? Integer) then 
        score += value[0]
    end
    if(value[1].is_a? Integer) then 
        score += value[1]
    end

    explode_array = []
    (1..score).each do |i|
        explode_array << value
    end
    explode_array
end