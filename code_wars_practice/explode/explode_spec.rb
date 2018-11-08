require_relative "explode.rb"

RSpec.describe "explode" do
    context "when given an array of two integers, int_a and int_b" do
        it "returns an array that contains [int_a, int_b] int_a + int_b times" do
            expect(explode([9,3])).to eq([[9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3], [9, 3]])
        end
    end
    context "when given an array of 1 integer, int_a and a character, a " do
        it "returns an array that contains [int_a, a]" do
            expect(explode([3,'a'])).to eq([[3,'a'], [3,'a'], [3,'a']])
            expect(explode([6, 'c'])).to eq([[6, 'c'], [6, 'c'], [6, 'c'], [6, 'c'], [6, 'c'], [6, 'c']])
        end
    end
end