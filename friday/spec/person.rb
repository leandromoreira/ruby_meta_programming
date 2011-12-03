class Class
 def checked_attribute(attribute,&validation)
  
  define_method "#{attribute}=" do |value|
   raise 'Invalid attribute' unless validation.call(value)
   instance_variable_set("@#{attribute}",value)
  end

  define_method attribute do
   instance_variable_get "@#{attribute}"
  end
 end
end


class Person
 checked_attribute :age do |value|
                         value > 18
                        end

end
