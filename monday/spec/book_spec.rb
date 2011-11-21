require 'book'

class String
 def to_alpha
  self.gsub /[^\w\s]/,''
 end
end
describe Book do
 it "should print only alphanumeric" do
  '3 the magic number'.should == '3#, the %&&&*magic number+'.to_alpha
 end
end
