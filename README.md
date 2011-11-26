# Metaprogramming Ruby
## Buy and read this lovely book http://pragprog.com/book/ppmetr/metaprogramming-ruby
# Monday :: The Object model
 Applying the "Open class" spell it's a nice and dangerous thing at the same time. We could think about *class* keyword more like **scope operator** than a simple keyword to define classes. Even being very dangerous to open a class, several ruby libraries (like money) open some core classes to let us use them more naturally. You will also find mokeypatch as synonyms for open class, both in a good way and bad way too. Think of it like a *GLOBAL MODIFICATION*, so you will be more warned!

## Points
 * think twice, think again about use open class spell.
 * instance variables are not connected to the classes.
 * think in instance methods of Class not methods of object.
 * take care of including modules and how its order can affect the lookup for a method.
 * you can open a module Kernel and make your method available in all places. ( print ).
 * silly but it worth quote: `Kernel.methods.grep /^pr/`
 * magic mixin using modules it's a trick: a simple chain of heritance. *ClassOne -> ModuleOne -> ModuleTwo -> SuperClass*

### Samples
```ruby
module Kernel
 def dangerous_in_all_places
 end
end


class OrdinaryClass
 def method_a
  @instance_variable = 1
  dangerous_in_all_places
 end
end

obj = OrdinaryClass.new
## here ther is no @instance_variable yet!

```

# Tuesday :: Methods 
The day starts with a boring task that is: wrapping a old lib in a new brand new computer object in order to provide for report guys a better API. But the ruby it's a cool language and will empower you which such `send` or `define\_method`.

## Points

* remember the oo on ruby it's taken to its extremme, you really can send messages to object. `object.send(:my\_message,3)`
* you can even call private methods by send WATCH OUT! there is a `public\_send` methdo which 'corrects' that break of encapsulation
* the ability to send messages through `send` it is also know as _Dispatch_
* you can create a new bright method just using the `define\_method`
* the use of `define\_method` it is also know as _Dynamic Method_
* be DRY on ruby it is funnier than Java
* `method\_missing` plays a important role on metaprogramming theather.
* try always use `method\_missing` for specific range of methods, don't handle all methods: restrict! You can create a chaing of bugs.

### Samples
```ruby
puts 1 + 1
#equals to
puts 1.send(:+,1)

class Frusciante
 define_method :play_guitar do |type|
  puts "Mr Frusciante plays #{type}"
 end
end

Frusciante.new.play_guitar "Fender"

class All
 def method_missing(method, *args)
  puts "calling... #{method}(#{args.join(', ')})"
 end
end

all = All.new
all.add "my collection"
all.save [:all,:none]
all.show_map -45.2343, 35.34352

```

# Wednesday :: Blocks

## Points

### Samples
```ruby
```
