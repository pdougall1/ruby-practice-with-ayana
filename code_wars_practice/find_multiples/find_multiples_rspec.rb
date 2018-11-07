require_relative "find_multiples.rb"

RSpec.describe '.find_multiples' do
    context 'when integer is 2 and limit is 6' do
        it "returns [2, 4, 6]" do
            expect(find_multiples(2,6)).to eq([2,4,6])
        end
    end
end