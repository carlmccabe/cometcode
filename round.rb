require 'yaml'


puts "Enter Username:" #asks the username
username = gets.chomp
puts "Welcome to CometCode #{username}" #prints the username

puts "What level would you like to select?"
puts "Easy: 1, Medium: 2, Hard: 3"
level = gets.chomp.to_i

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

# loop through each question 
questions.each { | key , value|
    # for each question print out the question
    value.each do |k, v|
        puts k[:question]     
      end
}


#tests
#Can create a new round of 5 questions from file
#Load a file
#Expected: no error

