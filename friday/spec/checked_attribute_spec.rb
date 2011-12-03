require 'person'

describe "CheckedAttributed" do

 it "should create raise exception if fails to validate" do
  person = Person.new 
  lambda { person.age = 10 }.should raise_error
 end

 it "shouldn't raise exception" do
  person = Person.new
  person.age = 20
 end
end
