require "byebug"
require 'yaml'

module Envelopes
    class Budget
        def initialize(name)
            #open directory with name.yaml
            @file_path = "#{__dir__}/#{name}.yaml"
            puts @file_path
            begin
                @data = YAML.load_file(@file_path)
            rescue
                @data={}
                File.open(@file_path, "w") { |f| f.write(@data.to_yaml) } 
            end   
            puts @data
        end

        def add_money_to_categories(amt)
            while (amt > 0)
                for category in @data.keys do
                    break if amt == 0
                    puts "You have #{amt} to distribute"
                    puts "How much do you want to put in #{category}"
                    value = gets.chomp.to_i
                    if amt >= value
                        amt -= value
                        @data[category] += value
                    else
                        puts "sorry, you only have #{amt} left to distrubute"
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
                @data[category] = value
            end
            puts @data
            save_budget 
        end

        def spend_money()
            puts "how much do you want to spend"
            amount = gets.chomp
            puts "what category?"
            category = gets.chomp
            @data[category] -= amount.to_i
            save_budget
        end

        def save_budget()
            File.open(@file_path, "w") { |f| f.write(@data.to_yaml) }
        end

    end

end