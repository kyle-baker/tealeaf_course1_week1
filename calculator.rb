# calculator.rb 

# 1. string interpolation vs concatenation
# 2. extract repetitive logic to methods
# 3. keep track of variable types (class) For instance, string vs integer
# 4. variable scope determined by do..end; outer scope vars are available to inner (inheritance), not vice versa
# 5. pass by ref vs pass by value: if method mutates caller, outer obj was modified

require 'pry'

def say(msg)
  puts "=> #{msg}"
end


say "What's the first number?"
num1 = gets.chomp 

say "What's the second number?"
num2 = gets.chomp

say "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
else
  result = num1.to_f / num2.to_f

end

puts "Result is #{result}"


