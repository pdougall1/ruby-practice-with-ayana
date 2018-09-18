require_relative "business_hours"

RSpec.describe(BusinessHours) do 
    it "takes two arguments" do
        expect(BusinessHours.new("arg1", "arg2")).to be_a BusinessHours
    end

    context "when updating the hours" do
        it "takes in 3 arguments " do
            expect { BusinessHours.new("arg1", "arg2").update("arg1", "arg2", "arg3") }.not_to raise_error()
        end
    end

    context "when closed method is called" do
        it "takes in 3 arguments " do
            expect { BusinessHours.new("arg1", "arg2").closed("arg1", "arg2", "arg3") }.not_to raise_error()
        end
    end
    context "when updating the opening and closing time from 9am-3pm to 10am-5pm" do
        let(:hours){ BusinessHours.new("9:00 AM", "3:00PM") }
        it "changes the opening time" do
            expect { hours.update("day", "10:00 AM", "5:00 PM") }.to change{ hours.send(:open_time) }.from("9:00 AM").to("10:00 AM")
        end
        it "changes the closing time" do
            expect { hours.update("day", "10:00 AM", "5:00 PM") }.to change{ hours.send(:close_time) }.from("3:00 PM").to("5:00 PM")
        end
    end

    context "when calculating the deadline" do
        it "has a time interval of 2 hours and the item was recieved at Jun 7, 2010 9:10 AM " do
            hours = BusinessHours.new("9:00 AM", "3:00 AM")
            deadline = hours.calculate_deadline(2*60*60, "Jun 7, 2010 9:10 AM")
            expect(deadline).to eq "Mon Jun 07 11:10:00 2010"
        end
    end


    context "when calculating the deadline" do
        it "has a time interval of 15 min and the item was recieved at Jun 8, 2010 2:48 PM " do
            hours = BusinessHours.new("9:00 AM", "3:00 AM")
            hours.update :fri, "10:00 AM", "5:00 PM"
            hours.update "Dec 24, 2010", "8:00 AM", "1:00 PM"
            hours.closed :sun, :wed, "Dec 25, 2010"
            
            deadline = hours.calculate_deadline(15*60, "Jun 8, 2010 2:48 PM")
            expect(deadline).to eq "Thu Jun 10 09:03:00 2010"
        end
    end


end