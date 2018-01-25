# Calculator
# Explanation
# You will be building a CLI calculator. Which means it will be a command line text based program. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# Specification:
# A user should be given a menu of operations
# A user should be able to choose from the menu
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# This process should continue until the user selects a quit option from the menu
# Phase 1
# Calculator functionality
# Calculator should be able to do basic arithmetic (,-, *, /)
# Phase 2
# Advanced Calculator functionality
# Calculator should be able to do basic arithmetic (exponents, square roots)
# Phase 3
# User should be given a menu of Calculator functionality
# User should be able to choose intended functionality
# Optional Extensions
# Does your calculator allows addition of more then 2 numbers in one go? eg: 2  3 + 4

# addBtn.addEventListener('click', add)
require 'pry'

operator = ''

while operator != 'quit'
  puts 'which operator would you like to use?(+, -, *, /, **, √ (square root), or quit)'
  operator = gets.chomp

  next unless operator != 'quit'

  puts 'Enter the first number'
  num1 = gets.chomp.to_f
  puts 'Enter the second number'
  num2 = gets.chomp.to_f

  if operator == '+'
    puts 'Do you want to add 2 or 3 numbers?'
    addition_op = gets.chomp
    if addition_op == '2'
      add_result = num1 + num2
    elsif addition_op == '3'
      puts 'Enter another number please'
      num3 = gets.chomp.to_f
      add_result = num1 + num2 + num3
      puts add_result
    end

  elsif operator == '-'
    sub_result = num1 - num2
    puts sub_result

  elsif operator == '*'
    mult_result = num1 * num2
    puts mult_result

  elsif operator == '/'
    while num2 == 0
      puts 'This is not a valid input'
      num2 = gets.chomp.to_f
    end
    div_result = num1 / num2
    puts div_result

  elsif operator == '**'
    exp_result = num1**num2
    puts exp_result

  elsif operator == '√' || operator == 'square root'
    puts Math.sqrt(num1)
  end
end


# def add(num1,num2)
#   return num1 + num2
# end
#
# def subtract(num1, num2)
#   return num1 - num2
# end
#
# def multiply(num1, num2)
#   return num1 * num2
# end
#
# def divide(num1, num2)
#   return num1 / num2
# end
#
# cli_calc = 'a'
#
# while cli_calc != 'q'
#
#   #request two numbers with comma
#   print "enter first number: "
#   input1 = gets().to_i
#   print "enter second number: "
#   input2 = gets().to_i
#   print "enter operator ( + - * / ): "
#   operator = gets(). chomp()
#   #request operation
#
#   puts 'result: '
#
#   case operator
#     when '+'
#       puts add(input1, input2)
#     when '-'
#       puts subtract(input1, input2)
#     when '*'
#       puts multiply(input1, input2)
#     when '/'
#       puts divide(input1, input2)
#     else
#       puts 'I dont recognise that symbol'
#   end
#   #call functions
#
# print 'type q to quit or hit enter to run another complex calculation '
# # type quit to quit
# cli_calc = gets(). chomp()
#
# end
