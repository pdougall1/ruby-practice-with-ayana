
module Envelopes
    class Budget

        def self.add_money(amt)
            b = new('test').add_money
            b.add_money(amt)
        end

        def initialize(name, store = Store.new)
            @store = store
            #open directory with name.yaml
            # unless name.is_a?(String) || name.is_a?(Symbol)
            #     raise "Budget can only be initialized with a string or symbol: #{name}"
            # end
            
            # @file_path = "#{USER_FILES_PATH}/#{name}.yaml"
            # puts @file_path
            # begin
            #     @data = YAML.load_file(@file_path)
            # rescue
            #     @data={}
            #     save_budget 
            # end   
            # puts @data
            # @envelopes = @data[:envelopes] || {}
            # @ledger = @data[:ledger] || []
        end

        def add_money(amt)
            puts "adding money #{amt}"
            
        end



        def add_money_to_categories(amt)
            while (amt > 0)
                for category in @envelopes.keys do
                    break if amt == 0
                    puts "You have #{amt} to distribute"
                    puts "How much do you want to put in #{category}"
                    done = false
                    while(!done)
                        value = gets.chomp.to_i
                        if amt >= value
                            amt -= value
                            @envelopes[category] += value
                            done = true
                        else
                            puts "sorry, you only have #{amt} left to distrubute"
                            puts "How much do you want to put in #{category}"
                        end
                    end
                    
                end
            end
            save_budget
        end

        def create_new_categories(string_of_categories)
            categories = string_of_categories.split(" ")
            for category in categories do
                puts "how much do you want to put in #{category}"
                value = gets.chomp.to_i
                @envelopes[category] = value
            end
            puts @envelopes
            save_budget 
        end

        def spend_money
            puts "how much do you want to spend"
            amount = gets.chomp
            puts "what category?"
            category = gets.chomp
            @envelopes[category] -= amount.to_i
            @ledger << {
                :timestamp => Time.now.utc.iso8601,
                :category => category,
                :amount => amount.to_i,
                :transation_type => :debit

            }
            save_budget
        end

        def print_envelopes
            puts(@envelopes)
        end

        def print_ledger
            puts(@ledger)
        end

        def save_budget
            @data[:envelopes] = @envelopes
            @data[:ledger] = @ledger
            File.open(@file_path, "w") { |f| f.write(@data.to_yaml) }
        end

    end
end
