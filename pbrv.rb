# pbrv.rb 

# Does not mutate the caller
def my_method(array)
  array.uniq
end

my_array = [3,4,4,5,6,6]
my_method(my_array)

puts my_array

# Because uniq does not mutate the caller, the value of my_array remains unchanged

# This one will mutate the caller

def mutate_method(array)
  array.uniq!
end

mutate_method(my_array)

puts my_array

# Because uniq! mutates the caller, the value of my_array is changed outside of the method