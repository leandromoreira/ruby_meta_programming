class Book
 def to_alpha(value)
  value.gsub /[^\w\s]/,''
 end
end
