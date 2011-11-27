class LowerPrice
 #everybody already uses this method
 def getThem(id)
  "20"
 end
end


class LowerPrice
 alias :get_lower_from :getThem
 attr_accessor :usage

 def getThem(id)
  self.get_lower_from id
  increment_usage
 end

 private
 
 def increment_usage
  @usage = 0 unless @usage
  @usage +=  1
 end

end

