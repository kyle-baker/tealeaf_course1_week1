
a = 1
b = a
b = 3
# 1. Value of a is 1

# 2. A hash stores a key and value pair for reference. An array is an ordered list of objects, 
# an index value is used to organize.

# 3. 
arr = [1, 2, 3, 3]
# returns [1,2,3,3]
[1,2,3,3].uniq
# returns [1, 2, 3]
[1,2,3,3].uniq!
#returns [1,2,3] and mutates the caller

#4. Map iterates over each element in an array, invokes given block, creates and returns a new array. 

#Map example

a = [1, 2, 3]
a = { |x| + 5}
#returns [6, 7, 8]

# Iterates over an array, and returns a new array that includes any items that return true to expression provided.

# Select Example

d = [1,2,3,4,5]
d.select {|number| number > 3}
# returns 4, 5 

#5. 

hash = {"some string" => "Value", "another string" => "Value"}

#6. Returns "no way!" in IRB, I must admit I'm not sure how this works. Not familiar with the sytax.

#7. x = 4

#8. Undefined local variable, x has not been declared as a local variable