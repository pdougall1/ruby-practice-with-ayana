class TipJar

    def self.calculate_tip(service_rating)
        case service_rating
        # service = 1, 12%
        when 1
            return 0.12
        # service = 2, 15%
        when 2
            return 0.15
        # service = 3, 18%
        when 3
            return 0.18
        # service = 4, 20%
        when 4
            return 0.20
        # service = 5, 22%
        when 5
            return 0.22
        else
            raise ArgumentError.new("service rating must be an integer, 1-5")
        end
    end

    def self.calculate_total(subtotal, num_in_party, tax, tip)
        total = subtotal * (tax + 1) * (tip + 1) / num_in_party
    end
    
end