require 'yaml'
require './question'
require 'io/console'
require 'colorized_string'

class Round
attr_reader :questions_set
    def initialize(questions_set)
        @questions_set = questions_set
        score = 0
    end
    def print_all
        puts questions_set
    end
    
    def round_loop
        score = 0
        questions_set.each { | key , value|
        puts key.capitalize
        question = Question.new(
            value[:question], 
            value[:answers],
            value[:correct]
            )
        question.ask_question
        question.print_answer_choices
        user_input = STDIN.getch.downcase
        puts ColorizedString["You entered >> #{user_input}"].colorize(:color => :blue)
        guess = "#{value[:correct]}"

        if user_input == guess 
            puts ColorizedString["Correct"].colorize(:color => :green)
            score += 1
            
        else
            puts ColorizedString["Wrong"].colorize(:color => :red)
        end
        }
        puts ColorizedString["You got #{score} out of #{questions_set.length}"].colorize(:color => :yellow)
    end
        
end

#tests
#Can load from file
#Expected: No Errors
test = YAML.load_file('./easyQuestions.yml')
#Can create a new round Class
#Expected: no error

# round = Round.new(test)
# Can print entire questions set 
# Expected: print question array
# round.print_all
# Can display one question at a time from the array
# Expected: "What is the keyword to start a class"
# round.round_loop
# Can display multiple choice answers under question
# #Expected: 
# Q5
# What method will convert a number to a string?
# a) to_s
# b) to_str
# c) to_string
# d) to-s
# Select a letter and press enter
# Determine if the answer is right or wrong
# Expected:
# Who designed and developed Ruby?
# a) Kyoto Osaka
# b) Nara Hakone
# c) Yukihiro Matsumoto
# d) Ajinomoto
# Select a letter and press enter
# c
# Correct = Passed

# 



