require 'book'

describe Book do
 it "should print only alphanumeric" do
  '3 the magic number'.should == Book.new.to_alpha('3#, the %&&&*magic number+')
 end
end
