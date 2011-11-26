require 'closable'

describe FClosable do

 it "should unrelease resource after used" do
  file = FClosable.new
  file.write
  file.read

  file.dispose.should be_false
 end

 it "should release resources after used" do
  file = FClosable.new

  closable(file) do |file| 
   file.write
   file.read
  end

  file.dispose.should be_true
 end

end
