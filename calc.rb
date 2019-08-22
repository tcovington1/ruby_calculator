# √ take the first number
# √ take modifier
# √ take the last number
# √ puts result
# error checking
# user input and modifiers should be checked for proper input type
# - make + - * / work
  # +
  # -
  # *
  # /
# √ - make clear work
# TODO the result should set first_number and allow for another modifier 
    # todo -and last number so result continues to build until the user decides to clear the calculator

#* BONUS
#TODO allow ( ) - (PEMDAS - order of operations)
#TODO HINT: you will need to use REGEX to complete this or have super messy code

#TODO allow string input - (refactor to just take 1 user input instead of a first number, operator, and last number)
# for example( "1 + 1") or ("50 * 100") - this is going to be a bit more complicated since you will have to parse the string to find the first number, operator, and last number (hint: split the string and check)
#√ make it work with floats
#TODO calculator history
#TODO memory function
#TODO The calculator has one memory that can be used for storing values temporarily.
#TODO SIN, COS, ect..
#TODO user types quit exiting the program

    #!instance var
@first_number
@mod
@second_number
@num_regex = /d/

@history = [
  
]

# if /d?



def first_number
  puts " "
  puts "--Welcome to the DPL Calculator--"
  puts "Please input your first number:"
  @first_number = gets.chomp
  if is_numeric(@first_number)
    @first_number = @first_number.to_f
    modifier
  else
    puts "Sorry you must enter a number"
    first_number
  end
end

def is_numeric(s)
  !!Float(s) rescue false
  end

def modifier
  puts " "
  puts "--Input your modifier: (+, -, *, /) "
  @mod = gets.chomp
  mod_test
  puts "mod test didn't work"
  # second_number
end

def mod_test
  if @mod == "+" || @mod == "-" || @mod = "*" || @mod = "/"
    second_number
  else
    puts "Sorry we don't support that modifier"
  end
end

def second_number
  puts " "
  puts "--Please input your second number:"
  @second_number = gets.chomp
  if is_numeric(@second_number)
    @second_number = @second_number.to_f
    calc_options
  else
    puts "Sorry you must enter a number"
    second_number
  end
  calc_options
end

def calculate
  # include math
  puts " "
  puts "Calculating..."
  puts " "
 if @mod == "+"
   @calc = @first_number + @second_number
   @history << @calc
  puts "The result of #{@first_number} #{@mod} #{@second_number} is #{@calc}"
 elsif @mod == "-"
  @calc = @first_number - @second_number
  @history << @calc
  puts "The result of #{@first_number} #{@mod} #{@second_number} is #{@calc}"
 elsif @mod == "*"
  @calc = @first_number * @second_number
  @history << @calc
  puts "The result of #{@first_number} #{@mod} #{@second_number} is #{@calc}"
 elsif @mod == "/"
  @calc = @first_number / @second_number
  @history << @calc
  puts "The result of #{@first_number} #{@mod} #{@second_number} is #{@calc}"
 
  else
  puts "We don't support that modifier."
 end
 calc_options_end
end

# def check_error

# end

def calc_options
  puts " "
  puts "What would you like to do next?"
  puts "1) Calculate"
  puts "2) Clear"
  puts "3) See History"
  puts "4) Exit"
  option_input = gets.to_i
  if option_input == 1
    calculate
  elsif option_input == 2
    clear_calc
  elsif option_input == 3
    see_history  
  elsif option_input == 4
    exit
  else
    puts "Sorry that wasn't an option.."
  end
end

  def calc_options_end
    puts " "
    puts "What would you like to do next?"
    puts "1) Add to calculation"
    puts "2) Restart"
    puts "3) See history"
    puts "4) Exit"
    option_input_end = gets.to_i
    if option_input_end == 1
      continue_calc
    elsif option_input_end == 2
      first_number
    elsif option_input_end == 3
      see_history
    elsif option_input_end == 4
      exit
    else
      puts "Sorry that wasn't an option.."
      calc_options_end
    end
end

def clear_calc
  first_number
end

def continue_calc
  puts "Enter modifier:"
  @mod2 = gets.chomp
  puts "Enter another number:"
  @next_number = gets.chomp
  if is_numeric(@next_number)
    @next_number = @next_number.to_f
    calc_again
  else
    puts "Sorry you must enter a number"
    continue_calc
  end
  
end

def calc_again
  if @mod2 == "+"
    @next_calc = @next_number + @calc
    puts " "
    puts "Caclulating again.."
    puts " "
    puts "#{@calc} #{@mod2} #{@next_number} is #{@next_calc}"
    @history << @next_calc
  elsif @mod2 == "-"
    @next_calc = @mod2 - @calc
  elsif @mod2 == "*"
    @next_calc = @mod2 * @calc
  elsif @mod2 == "+"
    @next_calc = @mod2 * @calc
  else
    puts "Sorry we don't support that modifier."
  end
end

def see_history
  puts " "
  puts "--Calc History"
  @history.each do |items|
    puts "#{@first_number} #{@mod} #{@second_number} was #{items}"

  end
end

# module Math
#   def add(num1, num2)
#     num1 + num2
#   end

# end

first_number