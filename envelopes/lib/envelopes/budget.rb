module Envelopes
    class Budget

        
        def self.create_new_categories(categories, store)
            store.add_categories(categories)     
        end

        def self.list_of_categories(store)
            store.categories
        end

        def self.list_of_category_names(store)
            store.category_names
        end

        def self.add_money_to_categories(amounts_to_add, store)
            amounts_to_add.each do |category, amt|
                store.add_to_categories(category,amt)
            end
        end


        def self.spend_money(amt, category, store)
            amt=amt.to_i
            store.deduct_money(category, amt)
            store.save_to_ledger(category, amt)
        end

    end
end
