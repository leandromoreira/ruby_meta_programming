class Computer
 
 def initialize(computer_id,data_source)
  @id = computer_id
  @ds = data_source
 end

 def mouse
  info = @ds.get_mouse_info(@id)
  price = @ds.get_mouse_price(@id)
  result = "Mouse: #{info} (U$#{price})"
  return "* #{result}" if price >= 100
  result
 end

 def keyboard
  info = @ds.get_keyboard_info(@id)
  price = @ds.get_keyboard_price(@id)
  result = "keyboard: #{info} (U$#{price})"
  return "* #{result}" if price >= 100
  result
 end

 def cpu
  info = @ds.get_cpu_info(@id)
  price = @ds.get_cpu_price(@id)
  result = "cpu: #{info} (U$#{price})"
  return "* #{result}" if price >= 100
  result
 end
 
end
