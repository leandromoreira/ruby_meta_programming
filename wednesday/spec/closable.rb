module Kernel
 def closable(res)
  yield res
  res.close
 end
end

class FClosable
 attr_accessor :dispose

 define_method :read do
  "read" 
 end
 
 define_method :write do 
  "write" 
 end
 
 def close
  self.dispose = true
 end

end
