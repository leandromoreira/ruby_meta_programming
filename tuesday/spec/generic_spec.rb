require 'generic'

describe Generic do
 it "should response to any property previously setted" do
  super_man  = Generic.new
  super_man.fear = "cryptonit"
  fear = super_man.fear
  fear.should == "cryptonit"
 end
end
