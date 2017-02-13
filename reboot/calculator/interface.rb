require_relative "caculator"

# ask user for first number
puts "First number?"
print "first number> "
# get user input
first_number = gets.chomp.to_f

# ask user for 2nd number
puts "Second number?"
print "second number> "
# get user input
second_number = gets.chomp.to_f

# ask user for operation kind
puts "What kind of operation [+][][][]"
# get user input
print "operation> "
operation = gets.chomp

# do the caculation
result = caculator(first_number, second_number, operation)
# display the result
puts result ="#{result}"
