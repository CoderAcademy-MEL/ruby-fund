require 'colorize'
require_relative "../13-tax/index"

def validate_input(salary, percentage_guess)
  if salary == 0 || percentage_guess == 0
    puts ""
    puts "Please enter numbers only (must be above 0)".colorize(:red)
    puts ""
    guess_salary_and_percentage
  end
end

def guess_salary_and_percentage
  puts "whats the salary?"
  print "> "
  salary = gets.chomp.to_i
  puts "whats the percentage of income tax you think will need to be paid?"
  print "> "
  percentage_guess = gets.chomp.to_i
  validate_input(salary, percentage_guess)
  return [salary, percentage_guess]
end

def flip_to_positive(difference)
  if difference < 0
    difference * -1
  else
    difference
  end
end

def difference
  salary, percentage_guess = guess_salary_and_percentage
  result = calculate_tax_payable(salary)
  percentage_of_income = result[:percentage_of_income]
  tax_payable = result[:tax_payable]
  difference = (percentage_of_income - percentage_guess).floor
  difference = flip_to_positive(difference)
  return {
    guess: percentage_guess,
    actual_percentage: percentage_of_income,
    difference: difference
  }
end

p difference

# Write a method that asks the user for a salary (as number), and a percentage. The percentage will be a guess by the person as to how much tax is paid on a certain salary.

# Using the tax question (problem 13), return a hash of the guess, the actual percentage, and the difference between the two (a three key hash). Write to screen each of these in a readable format. (You might consider cleaning the user input as a small extension.)
