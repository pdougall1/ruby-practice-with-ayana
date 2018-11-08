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
    if score == 0 then
        explode_array = "Void!"
    end
    explode_array
end