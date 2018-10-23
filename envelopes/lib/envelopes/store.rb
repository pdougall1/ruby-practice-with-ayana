require 'yaml'
require 'byebug'
require 'time'
module Envelopes


    class Store

        USER_FILES_PATH = "#{__dir__}/../../users"
        CURRENT_USER = "#{USER_FILES_PATH}/current_user.yaml"

        def initialize
            
            @current_user = YAML.load(File.read(CURRENT_USER))
            begin  
                @file_path = "#{USER_FILES_PATH}/#{@current_user}.yaml"
                @data = YAML.load_file(@file_path)
            rescue         
                @data = {}
            ensure
                @envelopes = @data[:envelopes] || {}
                @ledger = @data[:ledger] || []    
                save_data 
            end   
        end

        def self.save_categories(categories)
            new.add_categories(categories)                
        end

        def self.log_in(current_user)
            unless current_user.is_a?(String)
                raise "You can only log in with a string: #{current_user}"
            end
            File.open(CURRENT_USER, "w") { |f| f.write(current_user) }
        end

        def self.view_categories
            new.categories
        end

        def categories
            @envelopes
        end

        def add_to_categories(category_name, amt)
            @envelopes[category_name] += amt
            save_data
        end

        def add_categories(categories)
            @envelopes = @envelopes.merge(Hash[categories.map {|key| [key, 0]}])
            save_data
        end

        def deduct_money(category, amt)
            @envelopes[category] -= amt
            puts category
            save_data
        end

        def save_to_ledger(category, amount)
            @ledger << {
                :timestamp => Time.now.utc.iso8601,
                :category => category,
                :amount => amount.to_i,
                :transation_type => :debit
            }
            save_data
        end

        def save_data
            @data[:envelopes] = @envelopes
            @data[:ledger] = @ledger
            File.open("#{USER_FILES_PATH}/#{@current_user}.yaml", "w") { |f| f.write(@data.to_yaml) }
        end


    end
end