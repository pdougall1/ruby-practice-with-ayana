require_relative "explode.rb"

RSpec.describe "explode" do
    context "when given an array of two integers, int_a and int_b" do
        it "returns an array that contains [int_a, int_b] int_a + int_b times" do
            expect(explode([3,9])).to eq([[9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3]])
        end
    end
end