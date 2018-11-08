require_relative "solution.rb"

RSpec.describe "solution" do
    context 'when given input' do
        it "returns the sum of all the values less than the input that are multiples of 3 and 5" do
            expect(solution(10)).to eq(23)
            expect(solution(20)).to eq(78)
            expect(solution(200)).to eq(9168)
        end
    end
    

end