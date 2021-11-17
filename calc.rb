def calc
  puts "Calculator 1.0 \nEnter 'q' to quit."

  while true 
    print ">"
    print "Enter the first number: "
    puts op1 = gets.to_i
    print "Enter the second number: "
    puts op2 = gets.to_i
    print "Enter the operator: +, -, *, / "
    operator = gets.chomp
    compute(operator, op1, op2) 
  end
end

def compute(operator, op1, op2)
  result = op1.public_send(operator, op2)
  puts "Result =  #{result} "
end

calc



# class String
#   def is_numeric?
#     return true if self =~ /\A\d+\Z/
#     true if Float(self) rescue false
#   end
# end  






# RPN EXAMPLES:

# > 5 5 5 8 + + -
# -13.0
# > 13 +
# 0.0

# [5,5,5,8,+,+,-]
# 8+5 = 13  [5, 5, 13]
# 13 + 5 = 18 [5, 18]
# 5 - 18 = -13  [-13]
# > 13 +      [-13, 13 +]
# 0.0



# [ 4, 3,13, 5, / , + ]
# /
# 5
# 13
# 4

# Psuedocode:
# Get input from user. 
# Output same number or result. 
# Start with empty array as my stack. 
# (need to deal with one-item inputs) - still put in array: pop that item and return as result

# Iterate through each 'item' given in input expression.
# Determine whether each is a number or an operator.
#   If item is operator:
#     Pop op2 from stack
#     Pop op1 from stack
#     Result <- evaulate exn with op1 and op2
#     Push result back into stack
#   Else if item is a number:
#     Push item onto stack
#   Else if item is q (quit)
#     Exit program
# Result <- pop from stack (last number in stack)

# Methods to use:
# Array#pop => returns an array of the last n elements
#   a.pop 
#   a.pop(2)
# Array#push => pushes the given object(s) onto the end of the array / returns the array itself, so several appends may be chained together
# case _________
# when _________
#   do this
# else _________
#   do this 
# end

# Specs:
# The calculator should use standard input and standard output
# It should implement the four standard arithmetic operators
# *The calculator should handle errors and recover gracefully
# The calculator should exit when it receives a q command or an end of input indicator (EOF / Ctrl+D)
# *README
