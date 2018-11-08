def explode (value)
    score = value[0]+value[1]
    explode_array = []
    (1..score).each do |i|
        explode_array << value
    end
    explode_array
end