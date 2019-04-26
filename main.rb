require 'yaml'
require './round'
require './question'
require 'io/console'
require 'colorized_string'

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
end

case level
when 1
    questions = YAML.load_file('./easyQuestions.yml')
    puts ColorizedString["EASY LEVEL"].colorize(:color => :blue)
when 2
    questions = YAML.load_file('./mediumQuestions.yml')
    puts ColorizedString["MEDIUM LEVEL"].colorize(:color => :blue)
when 3
    questions = YAML.load_file('./hardQuestions.yml')
    puts ColorizedString["HARD LEVEL"].colorize(:color => :blue)
end

puts "\n" #creates a blank line

# puts questions

round = Round.new(questions)
# round.print_all 
round.round_loop





