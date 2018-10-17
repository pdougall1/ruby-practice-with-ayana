class SortLetters
    def initialize(string_of_letters)
        @string_of_letters = string_of_letters
    end
    def sort()
        @string_of_letters.split(',').map {|each| each.split('').sort}.sort
        # @string_of_letters.split('').sort
    end

    
end