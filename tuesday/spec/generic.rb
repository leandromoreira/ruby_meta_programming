class Generic
 
 def initialize
  @attr = {}
 end

 def method_missing(name,*args)
  if name.to_s =~ /=$/
   @attr[name.to_s.chop] = args[0]
  else
   @attr[name.to_s]
  end
 end
end
