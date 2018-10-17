class SortLetters
    def initialize(string)
        @string = string
    end
    def sort
        @string.split(',').map {|each| each.split('').sort}.sort
    end
end