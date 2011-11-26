require 'closable'

describe FClosable do

 it "should release resources after it is used" do
  file = FClosable.new
  closable(file) do |file| 
   file.write
   file.read
  end
  file.dispose.should be_true
 end

end
