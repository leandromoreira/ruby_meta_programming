require 'computer'
require 'data_source'

describe Computer do

 before do
  @ds = DS.new
  @id = 1
  @computer = Computer.new(@id,@ds);
 end

 describe "getting info from computer" do

  it "should not create a computer without proper initialize parameters" do
   lambda { Computer.new }.should raise_error
  end

  it "should return 'Mouse: optical (U$80)' given computer id" do
   @computer.mouse.should eq("Mouse: optical (U$80)")
  end
 end

end
