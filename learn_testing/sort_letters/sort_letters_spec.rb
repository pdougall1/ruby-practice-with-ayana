require_relative "sort_letters"

RSpec.describe (SortLetters) do
    
    context 'when given a string of letters,"bca"' do
        string_of_letters = 'bca'
        s = SortLetters.new(string_of_letters)
        it 'returns a sorted array of letters, [a,b,c]' do
            expect(s.sort).to eq [['a', 'b', 'c']]
        end
    end

    context 'when given a sentence with commas, "Hello yall, I am here"' do
        sentence = "this is a sentence, and it is split, with some commas"
        s = SortLetters.new(sentence)
        array_sentence = [
            [" ", " ", " ", " ", "a", "d", "i", "i", "i", "l", "n", "p", "s", "s", "t", "t"], 
            [" ", " ", " ", "a", "c", "e", "e", "e", "h", "i", "i", "n", "n", "s", "s", "s", "t", "t"], 
            [" ", " ", " ", "a", "c", "e", "h", "i", "m", "m", "m", "o", "o", "s", "s", "t", "w"]
          ]
        it 'returns an array of sorted arrays separated by commas' do
            expect(s.sort).to eq array_sentence
        end
    end

end