require_relative 'fizz_buzz'
RSpec.describe(FizzBuzz) do 
    context 'when requirements are 1-10' do
        
        it 'returns a collection' do
            collection = FizzBuzz.execute_max(10)
            expect(collection).to(eq([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz']))
        end
    end
    
    context 'when requirements are 1-15' do
        it 'returns a collection' do
            collection = FizzBuzz.execute_max(15)
            expect(collection).to eq [1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz']
        end
    end

    context 'when max is 0' do
        it 'throws an error' do
            expect { FizzBuzz.execute_max(0)}.to raise_error(ArgumentError)
        end
    end
    
    context 'when max is 1' do
        
        it 'returns a collection of 1' do
            collection = FizzBuzz.execute_max(1)
            expect(collection).to(eq([1]))
        end
    end

    context 'when max is a -1' do
        it 'throws an error' do
            expect { FizzBuzz.execute_max(-1)}.to raise_error(ArgumentError)
        end
    end



end 