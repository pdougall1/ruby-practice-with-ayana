module Envelopes
    class IncomeAllocation

        def self.start(amt,cats, current_categories_with_amts)
            puts current_categories_with_amts
            amounts_to_add = Hash[cats.collect {|category| [category, 0]}]
            while(amt > 0)
                amounts_to_add.each do |category, value|
                    break if amt == 0
                    puts  "You have #{amt} to distribute"
                    puts "You currently have #{value + current_categories_with_amts[category]} in #{category}"
                    puts "How much do you want to put in #{category}"
                    done = false   
                    while(!done)
                        amt_to_add = STDIN.gets.chomp.to_i
                        if amt >= amt_to_add
                            amt -= amt_to_add
                            amounts_to_add[category] = amt_to_add + value
                            done = true
                        else
                            puts "sorry, you only have #{amt} left to distrubute"
                            puts "How much do you want to put in #{key}"
                        end
                    end
                end
            end 
            return amounts_to_add
        end
        
    end 
end