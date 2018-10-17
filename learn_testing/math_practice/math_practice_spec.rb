require_relative 'math_practice.rb'

RSpec.describe(MathPractice) do
    context "when adding two numbers, 3 and 4" do
        sum = MathPractice.add(3,4)
        it 'returns 7' do
            expect(sum).to eq 7
        end
    end
end