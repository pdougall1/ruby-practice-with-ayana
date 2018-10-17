class Total
    def initialize
        @total = []
    end
    def add(num)
        @total << num
    end
    def to_i
        @total.map {|value| value.to_i}.reduce(:+)
    end
end