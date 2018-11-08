def solution(number)
    sum = 0
    (2...number).each do |each|
        if(each % 3 ==0 || each % 5 ==0) then
            sum += each 
        end
    end
    sum
end