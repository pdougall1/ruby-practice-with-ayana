require_relative 'fizz_buzz'
RSpec.describe(FizzBuzz) do 
    subject(:collection) { FizzBuzz.execute_max(max) }
    let(:max) { nil }

    context 'when requirements are 1-10' do  
        let(:max) { 10 }
        it 'returns a collection' do
            expect(collection).to(eq([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz']))
        end
    end
    
    context 'when requirements are 1-15' do
        let(:max) { 15 }
        it 'returns a collection' do
            expect(collection).to eq [1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz']
        end
    end

    context 'when max is 0' do
        let(:max) { 0 }
        it 'throws an error' do
            expect { FizzBuzz.execute_max(max)}.to raise_error(ArgumentError)
        end
    end
    
    context 'when max is 1' do
        let(:max) { 1 }
        it 'returns a collection of 1' do
            expect(collection).to(eq([1]))
        end
    end

    context 'when max is a -1' do
        let(:max) { -1 }
        it 'throws an error' do
            expect { FizzBuzz.execute_max(max)}.to raise_error(ArgumentError)
        end
    end



end 