class Computer
 
 def initialize(computer_id,data_source)
  @id = computer_id
  @ds = data_source
 end

 def mouse
  component :mouse
 end

 def keyboard
  component :keyboard
 end

 def cpu
  component :cpu
 end
 
 private

 def component(name)
  info = @ds.send "get_#{name}_info", @id
  price = @ds.send "get_#{name}_price", @id
  result = "#{name.to_s.capitalize}: #{info} (U$#{price})"
  return "* #{result}" if price >= 100
  result
 end

end
