def beautify_label
   puts '-' * 20
   yield
   puts '-' * 20
end
beautify_label { puts 'Beginning program' }

# block
# block is code between basket brackets




print_line = Proc.new { puts '=' * 20 }
print_line2 = proc { puts '#' * 20 }

print_line.call
print_line.class

print_line2.call


print_line3 = lambda { puts '@' * 20 }
print_line3.call

print_line_custom1 = proc { |arg1| puts arg1 * 20 }
print_line_custom1.call 'p1'
print_line_custom1.call 'p1', 'p2'

print_line_custom2 = proc { |arg1 = '0', arg2 = 10| puts arg1 * arg2 }
print_line_custom2.call '22', 20

print_line_custom2.call

# yeild_example

def print_example1
  puts 'in function'
  yield
  puts 'end of print_example function'
  puts '- ' * 20
end

print_example1 { puts 'inside block' }

print_example1 { puts 'inside block again' }

def print_example2
  puts '=' * 20
  puts 'beginning print example 2'
  yield
  yield
  puts 'end of print example 2'
end

print_example2 { puts 'second time' }

print_example3 = lambda { puts 'lambda' }
print_example3.class
print_example3.call


print_example4 = lambda { |arg1| puts arg1 * 20 }
print_example4.call 'l2'

print_example4.call 'l2', 'l3' rescue puts 'exception in lambda'
# exception caught


def block_example4
  beautify_label { puts 'Block example 4' }
  if block_given?
    yeild
  else
    puts 'No block given'
  end
end

block_example4


beautify_label { puts 'End of program' }
