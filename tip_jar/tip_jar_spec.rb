require_relative 'tip_jar'
RSpec.describe(TipJar) do
    subject(:tip) {TipJar.calculate_tip(service_rating)}
    let(:service_rating) {nil}

    context "when rating is 0" do
        # let(:service_rating){0}
        it 'throws an error' do
            expect { TipJar.calculate_tip(0) }.to raise_error(ArgumentError)
        end
    end

    context 'when calculating the tip' do 
        let(:service_rating) {1}
        it "should return .12 when the rating is 1" do 
            expect(tip).to eq 0.12
        end
        # it { is_expected.to eq 0.12 }
    end

    context 'when calculating the tip' do 
        let(:service_rating) {2}
        it "should return .15 when the rating is 2" do 
            expect(tip).to eq 0.15
        end
    end

    context 'when calculating the tip' do 
        let(:service_rating) {3}
        it "should return .18 when the rating is 3" do 
            expect(tip).to eq 0.18
        end
    end

    context 'when calculating the tip' do 
        let(:service_rating) {4}
        it "should return .20 when the rating is 4" do 
            expect(tip).to eq 0.20
        end
    end

    context 'when calculating the tip' do 
        let(:service_rating) {5}
        it "should return .22 when the rating is 5" do 
            expect(tip).to eq 0.22
        end
    end

    context "when subtotal is  100, the num of people is 1, tax is 0, and tip is 0" do
        it "should return 100" do
            total = TipJar.calculate_total(100, 1, 0, 0)
            expect(total).to eq 100
        end
    end

end