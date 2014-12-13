# variable_scope.rb 
x = 4

loop do
  x = 'hey there'
  break
end

puts x # = > x should be 'hey there' 

def no_mutate(array)
  array.uniq
end

my_array = [1, 2, 2, 3]
no_mutate(my_array)

puts my_array # => Should output 1,2,2,3. The uniq method doesn't mutate caller, uniq! would.

def yes_mutate(array)
  array.uniq!
end
yes_mutate(my_array)
puts my_array # => Output will be 1, 2, 3. The uniq! method mutates the caller.

# Example of initializing a variable at an inner scope, then attempting to reference in outer scope.
#2.times do |n|
#  inner_variable = 5
#end

#puts inner_variable

# Returns error 
#variable_scope.rb:35:in `<main>': undefined local variable or method `inner_variable' for main:Object (NameError)

z = "hi"

def my_method
  puts z
end

my_method # => Returns an error, undefined local variable for z. 

#Per the Hint: methods only care about variables that are passed in as arguments