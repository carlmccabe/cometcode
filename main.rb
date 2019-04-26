require 'yaml'
require './round'
require './question'
require 'io/console'
require 'colorized_string'

<<<<<<< HEAD
puts ColorizedString["Enter Username:"].colorize(:color => :black, :background => :white)
username = gets.chomp
puts ColorizedString["Welcome to CometCode #{username} test your skills as a Ruby Developer!"].colorize(:color => :black, :background => :white)
puts ColorizedString["Instructions to play:"].colorize(:color => :red)
puts ColorizedString["-Pick a level\n-Read the questions carefully\n-Select a letter of your answer\n-The result will be displayed at the end of the game\n-Enjoy"].colorize(:color => :yellow)

puts ColorizedString["What level would you like to select?"].colorize(:color => :black, :background => :white)
puts ColorizedString["Easy: 1, Medium: 2, Hard: 3"].colorize(:color => :light_blue, :number => :orange)
level = STDIN.getch.to_i

until level.between?(1,3)
    puts ColorizedString["Level has to be between 1 and 3"].colorize(:color => :red)
    level = STDIN.getch.to_i
=======
#Main methods - main ui


right_name = "" #to confirm username
def clear
    print "\e[2J\e[f" #to clear screen
end

# Adds color to the string ("enter string", "choose text color", "choose background color")
def colorString(string, txtcolor = "green", bgcolor= "black")
    puts ColorizedString["#{string}"].colorize(
        :color => txtcolor.to_sym,
        :background => bgcolor.to_sym
    )
end
# Loop to confirm and obtain valid username
while right_name != "y" do
    clear 
    puts "    Welcome to CometCode"
    colorString("--++====================++--", "blue")
    puts
    puts ColorizedString["Enter Username:"].colorize(
        :color => :black, 
        :background => :white
        )#asks the username
    username = gets.chomp
    puts "Username is <#{username}>? (y)es (n)o"
    right_name = (STDIN.getch.downcase) #gets y or n with out needing to press enter
    
>>>>>>> carl
end
clear
# Welcome Message
#////////////////////////////
colorString(
    "Welcome to CometCode #{username}!",
    "black",
    "white")
colorString(
    "Test your skills as a Ruby Developer!",
    "black",
    "white")
colorString(
    "Instructions to play:",
    "red"
)
colorString(
    "-Pick a level\n
    -Read the questions carefully\n
    -Select a letter of your answer\n
    -The result will be displayed at the end of the game\n
    -Enjoy",
    "yellow"
)
# Select level
colorString(
    "____________________________________________+",
    "yellow"
    )
puts "What level would you like to select?       |"
puts "Easy: 1, Medium: 2, Hard: 3                |"
puts "(press the 1, 2,or 3 key on the keyboard)  |"
level = STDIN.getch.to_i
# Only accepts 1,2, or 3
until level.between?(1,3)

    colorString("Level has to be between 1 and 3", "red")
    level = STDIN.getch.to_i
end
# Loads file based on user selection
case level
when 1
    questions = YAML.load_file('./easyQuestions.yml')
<<<<<<< HEAD
    puts ColorizedString["EASY LEVEL"].colorize(:color => :blue)
when 2
    questions = YAML.load_file('./mediumQuestions.yml')
    puts ColorizedString["MEDIUM LEVEL"].colorize(:color => :blue)
when 3
    questions = YAML.load_file('./hardQuestions.yml')
    puts ColorizedString["HARD LEVEL"].colorize(:color => :blue)
=======
    colorString("EASY LEVEL", "blue")
when 2
    questions = YAML.load_file('./mediumQuestions.yml')
    colorString("MEDIUM LEVEL", "blue")
when 3
    questions = YAML.load_file('./hardQuestions.yml')
    colorString("HARD LEVEL", "blue")
>>>>>>> carl
end

puts "\n" #creates a blank line


# Creates new round with selected level(see round.rb)
round = Round.new(questions)
<<<<<<< HEAD
# round.print_all 
round.round_loop





=======

round.round_loop
#clear and close less abrubtly
clear
puts ""
>>>>>>> carl
