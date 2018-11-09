def series_sum(n)
    answer = 0
    (1..n).each do |i|
        answer = answer + 1/(1+3*(i-1)).to_f
    end
    sprintf('%.2f', answer)
end