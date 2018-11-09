require_relative "find_outlier.rb"

RSpec.describe "find_outlier" do
    context "when given an array of all even and one odd number" do
        it "returns the one odd number" do
            expect(find_outlier([0, 1, 2])).to eq(1)
        end
    end
end