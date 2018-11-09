require_relative "series_sum"

RSpec.describe "series_sum" do
    context "when given an integer" do
        it "returns the sum of a series" do
            expect(series_sum(1)).to eq("1.00")
        end
    end
end