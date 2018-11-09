def series_sum(n)
    answer = 1
    n = n-1
    (0...n).each do |i|
        answer = answer + 1/(1+3*n).to_f
        puts answer
    end
    sprintf('%.2f', answer)
end