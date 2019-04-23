require 'yaml'
questions = nil
username = nil # initialize the variable so you can invoke methods on it
difficulty = nil
score = nil

# def ask_for_username
#     print "Please enter username"
#     username = gets.chomp
# end


# until username do
#     puts username
#     ask_for_username()
# end

puts "Username:"
username = gets.chomp
puts "Welcome #{username}"

puts "What level would you like to select?"
puts "Easy: 1, Medium: 2, Hard: 3"
level = gets.chomp
level = level.to_i
until level.between?(1,3)
    puts "Level has to be between 1 and 3"
    level = gets.chomp.to_i
end

case level
when 1
    questions = YAML.load_file('./easyQuestions.yml')
when 2
    questions = YAML.load_file('./mediumQuestions.yml')
when 3
    questions = YAML.load_file('./hardQuestions.yml')
end

# loop through each question 
questions.each { | key , value|
    # for each question print out the question
    value.each do |k,v|
        puts k[:question]
        # puts v
      end
} 

#tests
#Can create a new round of 5 questions from file
#Load a file
#Expected: no error

