require_relative './store'
module Envelopes
    class Budget

        
        def self.create_new_categories(categories, current_user)
            Store.save_categories(categories, current_user)     
        end

        def self.list_of_categories(current_user)
            Store.view_categories(current_user)
        end

        def self.add_money_to_categories(amt, current_user)
            new(current_user).add_money_to_categories(amt)
            

        end

        def self.spend_money(amt, category, current_user)
            new(current_user).spend_money(amt, category)
        end

        def initialize(current_user, store = Store.new(current_user))
            @store = store   
            
        end

        def add_money_to_categories(amounts_to_add)
            amounts_to_add.each do |category, amt|
                @store.add_to_categories(category,amt)
            end
        end
            
            # if not @store.categories
            #     return "sorry, you don't have any envelopes to put money in..."
            # end
        #     while (amt > 0)
        #         @store.categories.each do |key, value|
        #             break if amt==0
        #             puts "You have #{amt} to distribute"
        #             puts "How much do you want to put in #{key}"
        #             done = false
        #             while(!done)
        #                 amt_to_add = STDIN.gets.chomp.to_i
        #                 if amt >= amt_to_add
        #                     amt -= amt_to_add
        #                     @store.add_to_categories(key,amt_to_add)
        #                     done = true
        #                 else
        #                     puts "sorry, you only have #{amt} left to distrubute"
        #                     puts "How much do you want to put in #{key}"
        #                 end
        #             end
        #         end
        #     end
        # end

        def spend_money(amt, category)
            amt=amt.to_i
            @store.deduct_money(category, amt)
            @store.save_to_ledger(category, amt)
        end

    end
end
