class FizzBuzz
    
    def self.execute_max(max)
        if max <= 0
            raise ArgumentError.new("max must be greater than 0: #{max} is too low")
        end
        (1..max).map do |num|
            if(num % 15 == 0)
                next "fizzbuzz"
            elsif(num % 5 == 0)
                next "buzz"
            elsif(num % 3 == 0)
                next "fizz"
            else
                next num
            end
        end

    end
end



