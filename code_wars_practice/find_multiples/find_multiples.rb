def find_multiples(int, limit)
    multiples = []
    value = int
    while value <= limit do
        multiples << value
        value = value+int
    end
    multiples
end