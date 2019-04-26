require 'yaml'
require './round'
require './question'
require 'io/console'
require 'colorized_string'

#Main methods

right_name = ""#to confirm username
def clear
    print "\e[2J\e[f" #to clear screen
end

while right_name != "y" do
    clear 
    puts "    Welcome to CometCode"
    puts "--++====================++--"
    puts ""
    puts "Please Enter Username:" #asks the username
    username = gets.chomp
    puts "Username is <#{username}>? (y)es (n)o"
    right_name = (STDIN.getch.downcase)
    
end
clear
puts "!!!!  Welcome to CometCode #{username}!  !!!!" #prints the username
puts "____________________________________________+"
puts "What level would you like to select?       |"
puts "Easy: 1, Medium: 2, Hard: 3                |"
puts "(press the 1, 2,or 3 key on the keyboard)  |"
level = STDIN.getch.to_i

until level.between?(1,3)

    puts "Level has to be between 1 and 3"
    level = gets.chomp.to_i
end

case level
when 1
    questions = YAML.load_file('./easyQuestions.yml')
    puts "EASY LEVEL"
when 2
    questions = YAML.load_file('./mediumQuestions.yml')
    puts "MEDIUM LEVEL"
when 3
    questions = YAML.load_file('./hardQuestions.yml')
    puts "HARD LEVEL"
end

puts "\n" #creates a blank line

# puts questions

round = Round.new(questions)
round.print_all 
round.round_loop




