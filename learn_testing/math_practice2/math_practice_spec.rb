require_relative "math_practice"

RSpec.describe(MathPractice) do
    context "when 2 and 3 are added" do
        it "returns 5" do
            expect(MathPractice.add(2,3)).to eq 5
        end
    end
end