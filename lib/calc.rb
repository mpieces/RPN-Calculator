class Calculator

OPERATORS = [ '+', '-', '*', '/' ].freeze 

  def initialize
    @stack = []
  end

  def evaluate_input
    puts "Calculator 2.0 \nEnter 'q' to quit."
    while true 
      print ">"
      input = gets.chomp.split
      input.each do |item|
        if item.is_numeric?
          @stack << item.to_f
          puts @stack.last 
        elsif OPERATORS.include?(item)
          puts "Enter a number first" if @stack.empty? 
          compute(item)
        elsif item == 'q'
          return 
        else
          puts "Error: Please enter a number or operator"
        end 
      end
    end
  end

  def compute(operator)
    operands = @stack.pop(2)
    result = operands.inject(operator)
    @stack << result
    puts "Result =  #{@stack.last}" unless @stack.empty?
  end
end 

class String
  def is_numeric?
    return true if self =~ /\A\d+\Z/
    true if Float(self) rescue false
  end
end  

Calculator.new.evaluate_input



# Error handling:
# User enters input that is not a number or NO input 
# User enters operator first (stack array empty)



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
# Get input from user. Input = input from user
# Output same number or result.  Output = result of evaulation
# Start with empty array as my stack. 
# (need to deal with one-item inputs) - still put in array: pop that item and return as result

# Iterate through each 'item' given in input expression.
# Determine whether each is a number or an operator.
#   If item is a number:
#     Push item onto stack
#   else If item is operator:
#     Pop op2 from stack
#     Pop op1 from stack
#     Result <- evaulate exn with op1 and op2
#     Push result back into stack
#   
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
