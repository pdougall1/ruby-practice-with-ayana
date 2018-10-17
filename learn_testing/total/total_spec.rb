require_relative "total.rb"

RSpec.describe (Total) do
    context 'when one number is added and to_i is called' do
        total = Total.new()
        total.add(1)
        it 'returns the number' do
            expect(total.to_i).to eq 1
        end
    end

    context 'when two numbers are added and to_i is called' do
        total = Total.new()
        total.add(10)
        total.add(5)
        it 'returns the sum of the two numbers' do
            expect(total.to_i).to eq 15
        end
    end

    context 'when thee numbers are added and to_i is called' do
        total = Total.new()
        total.add(100)
        total.add(50)
        total.add(3)
        it 'returns the sum of all the numbers' do
            expect(total.to_i).to eq 153
        end
    end

    
end