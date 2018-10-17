require 'pp'

class Budget
    def initialize(balance=0, *category_names)
        @balance = balance
        @categories = Categories.new(*category_names)
        show()
    end

    def create_new_category(name_of_category)
        @categories[name_of_category]=0
    end

    def add_money_to_category(category, amount)
        @categories[category] += amount

    end

    def subtract_money_from_category(category, amount)
        @categories[category] -= amount

    end

    def spend_money(category, amount)
        @balance -= amount
        subtract_money_from_category(category,amount)
    end

    def make_money(amount)
        @balance += amount
    end

    def show()
        puts "Balance: " + @balance.to_s
        @categories.print
    end

    private
    
    class Categories
        DEFAULT_CATEGORY_NAMES = ["food", "rent", "shopping", "transportation"]
        def initialize(*given_category_names)
            category_names = given_category_names + DEFAULT_CATEGORY_NAMES
            @store = Hash[category_names.map { |item| [item, 0] } ]
        end

        def [](key)
            @store[key]
        end

        def print(key = nil)
            if key
                pp @store[key]
            else
                pp @store
            end
        end


    end
    
end