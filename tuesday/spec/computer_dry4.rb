class Computer
 
 def initialize(computer_id,data_source)
  @id = computer_id
  @ds = data_source
 end

 def method_missing(name,*args)
  info = @ds.send "get_#{name.to_s}_info", @id
  price = @ds.send "get_#{name.to_s}_price", @id
  result = "#{name.capitalize}: #{info} (U$#{price})"
  return "* #{result}" if price >= 100
  result
 end

end
