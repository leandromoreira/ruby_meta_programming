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

# Tuesday :: xxxx
