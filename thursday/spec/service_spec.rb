require 'service_in_use'

describe LowerPrice do
 it "should log the usage when old method it's used" do
  service = LowerPrice.new
  service.getThem 10
  service.usage.should == 1
 end

 it "should log the new method usage" do
  service = LowerPrice.new
  service.get_lower_from 10
  service.usage.should == 1
 end
end
