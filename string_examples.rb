# String examples
puts '-' * 20

name = 'Alpha'
str1 = "hello #{ name }"
str2 = "hello #{ name }"

puts str1
puts str2

puts "str1 == str2 : #{ str1 == str2 }  "
puts "str1 === str2 : #{ str1 === str2 }  "

puts "str1.eql str2 : #{ str1.eql? str2 }  "
# eql? check for value
# equal? check if objects are identical
puts "str1.equal? str2 : #{ str1.equal? str2 }  "
