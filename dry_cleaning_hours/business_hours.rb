require "time"

class BusinessHours 
    def initialize(open_time, close_time)

    end
    
    def update(arg1, arg2, arg3)
        
    end

    def closed(arg1, arg2, arg3)
    end

    def calculate_deadline(interval, time)
        parsed_time = Time.parse(time)
        deadline = parsed_time + interval
        formated_time = deadline.strftime('%a %b %d %H:%M:%S %Y')
        puts deadline
        puts formated_time
        
        return formated_time

    end

    private

    attr_reader :open_time, :close_time
    
end