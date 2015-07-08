# Class, Module, objects

module Soundable
  def sound
    'make sound'
  end
end

module Pettable
  def can_be_pet?
    raise 'implement this method'
  end
end

class Animal
  include Soundable
  include Pettable
end

class Dog < Animal

end

bunty = Dog.new
puts bunty.sound

module Injectable
  def injected_module_method
    'something'
  end
end

# Inject methods

# Inject module on object
print 'Before injecting module, contains injectable_method '
puts bunty.methods.include? :injected_module_method

puts 'After injecting module'
print 'contains injectable_method '
bunty.extend Injectable
puts bunty.methods.include? :injected_module_method

print 'Before injecting method on object, contains injectable_method '
puts bunty.methods.include? :injected_on_obj

puts 'After injecting a method on object'
def bunty.injected_on_obj
  'yes injected on object'
end
puts bunty.methods.include? :injected_on_obj

puts '-' * 20
