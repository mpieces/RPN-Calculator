class Calculator

OPERATORS = [ '+', '-', '*', '/' ].freeze 

  attr_reader :stack

  def initialize
    @stack = []
  end

  def evaluate_input
    puts "Calculator 2.0 \nEnter 'q' to quit."
    while true 
      print ">"
      input = get_user_input
      puts "Enter a number" if input.empty?
      input.each do |item|
        if item.is_numeric?
          @stack << item.to_f
          puts @stack.last 
        elsif OPERATORS.include?(item)
          puts "Enter a number first" if @stack.empty? 
          compute(item)
        elsif item == 'q'
          puts "Goodbye!"
          return
        else
          puts "Error: Please enter a number or operator"
        end 
      end
      puts "Result =  #{@stack.last}" unless @stack.empty?
    end
  
  end

  def compute(operator)
    operands = @stack.pop(2)
    result = operands.inject(operator)
    @stack << result
  end

  def get_user_input
		STDIN.gets.chomp.split
	end
end 

class String
  def is_numeric?
    return true if self =~ /\A\d+\Z/
    true if Float(self) rescue false
  end
end  

Calculator.new.evaluate_input

=begin
RPN EXAMPLES:

> 5 5 5 8 + + -
-13.0
> 13 +
0.0

[5,5,5,8,+,+,-]
8+5 = 13  [5, 5, 13]
13 + 5 = 18 [5, 18]
5 - 18 = -13  [-13]
> 13 +      [-13, 13 +]
0.0

[ 4, 3,13, 5, / , + ]
/
5
13
4

PSEUDOCODE:

Get input from user. Input = input from user
Output same number or result.  Output = result of evaulation
Start with empty array as my stack. 
(need to deal with one-item inputs) - still put in array: pop that item and return as result

Iterate through each 'item' given in input expression.
Determine whether each is a number or an operator.
  If item is a number:
    Push item onto stack
  else If item is operator:
    Pop op2 from stack
    Pop op1 from stack
    Result <- evaulate exn with op1 and op2
    Push result back into stack
  
  Else if item is q (quit)
    Exit program
Result <- pop from stack (last number in stack)

=end
