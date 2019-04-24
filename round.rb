require 'yaml'

class Round
attr_reader :questions_set
    def initialize(questions_set)
        @questions_set = questions_set
    end
    def print_all
        puts questions_set
    end
    
    def round_loop
        questions_set.each { | key , value|
        puts key.capitalize
        puts value[:question]
        puts "a) #{value[:answers][:a]}"
        puts "b) #{value[:answers][:b]}"
        puts "c) #{value[:answers][:c]}"
        puts "d) #{value[:answers][:d]}"
        puts "Select a letter and press enter"
        user_input = gets.chomp
        }
    end
end

#tests
#Can load from file
#Expected: No Errors
test = YAML.load_file('./easyQuestions.yml')
#Can create a new round Class
#Expected: no error

round = Round.new(test)
#can print entire questions set 
#Expected: print question array
# round.print_all
#can display one question at a time from the array
#Expected: "What is the keyword to start a class"
round.round_loop
#can display multiple choice answers under question
# #Expected: 
# Q5
# What method will convert a number to a string?
# a) to_s
# b) to_str
# c) to_string
# d) to-s
# Select a letter and press enter
