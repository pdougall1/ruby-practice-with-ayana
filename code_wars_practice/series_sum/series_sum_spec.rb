require_relative "series_sum"

RSpec.describe "series_sum" do
    context "when given the integer, 1" do
        it "returns the sum of a series, '1.00' " do
            expect(series_sum(1)).to eq("1.00")
        end
    end

    context "when given the integer, 2" do
        it "returns the sum of a series, '1.25' " do
            expect(series_sum(2)).to eq("1.25")
        end
    end
end