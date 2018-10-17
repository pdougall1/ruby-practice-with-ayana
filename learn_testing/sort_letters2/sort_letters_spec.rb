require_relative "sort_letters"

RSpec.describe(SortLetters) do
    
    context "when sorting a string, 'bca'" do
        string = 'bca'
        s = SortLetters.new(string)
        sorted_string = [['a', 'b', 'c']]
        it "returns a nested array of the sorted string" do
            expect(s.sort).to eq sorted_string
        end
    end

    context 'when sorting a sentence with commas' do
        sentence = "this is a sentence, and it is split, with some commas"
        s = SortLetters.new(sentence)
        sorted_string = [
            [" ", " ", " ", " ", "a", "d", "i", "i", "i", "l", "n", "p", "s", "s", "t", "t"], 
            [" ", " ", " ", "a", "c", "e", "e", "e", "h", "i", "i", "n", "n", "s", "s", "s", "t", "t"], 
            [" ", " ", " ", "a", "c", "e", "h", "i", "m", "m", "m", "o", "o", "s", "s", "t", "w"]
          ]
        it 'returns a sorted array of sorted arrays' do
            expect(s.sort).to eq sorted_string
        end
    end
end