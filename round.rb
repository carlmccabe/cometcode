require 'yaml'
require './question'
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> carl
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
        clear
        question = Question.new(
            value[:question], 
            value[:answers],
            value[:correct]
            )
<<<<<<< HEAD
        question.ask_question
        question.print_answer_choices
        user_input = STDIN.getch.downcase
        puts ColorizedString["You entered >> #{user_input}"].colorize(:color => :blue)
        guess = "#{value[:correct]}"
=======

easy = YAML.load(File.read("easyQuestions.yml"))
class Round
    def initialize

    end
end
>>>>>>> 5fc43e64b7b202673ce1f7aeaafec1b3bce18237

        if user_input == guess 
            puts ColorizedString["Correct"].colorize(:color => :green)
            score += 1
            
        else
            puts ColorizedString["Wrong"].colorize(:color => :red)
        end
        }
        puts ColorizedString["You got #{score} out of #{questions_set.length}"].colorize(:color => :yellow)
=======
        loop do
            puts key.capitalize
            question.ask_question
            question.print_answer_choices
            colorString("Select a letter and press enter", "blue")
            user_input = STDIN.getch.downcase
# checks if user_input is = a, b, c, or d
            if ['a','b','c','d'].include?(user_input)
                answer = "#{value[:correct]}"
                puts "You entered >> #{user_input}...."
                sleep(1)
                if user_input == answer 
                    colorString(">>Correct!<<", "green")
                    score += 1
                else
                    colorString(">>Wrong<<", "red")
                end
                sleep(.8)
                break
            else
                puts "Try again, must be a, b, c, or d."
                sleep(1.5)
                clear 
            end
        end
        }
puts
        colorString("You got #{score} out of #{questions_set.length}, Thanks for Playing!", "yellow")
        sleep(2)

>>>>>>> carl
    end
        
end

#tests
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> carl
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



<<<<<<< HEAD
=======
#Can create a new round of 5 questions from file
#Init Round
#Expected: no error
round = Round.new
#Can load from file and print to console
#Expected: {:Q1=>["What is the keyword to start a class?",
# {:a=>"end", :b=>"class", :c=>"def", :d=>"begin"}, "b"], 
#:Q2=>["What is the keyword to start a method?", 
#{:a=>"end", :b=>"class", :c=>"def", :d=>"begin"}, "c"]}
puts "Loaded easyQuestions.yml"
puts "========================="
puts easy
puts "========================="
puts "Is it a hash?"
puts easy.is_a?(Hash)
puts "========================="
puts easy[:q1[:question]]

# question = Question.new(questionOne)


#  question = Question.new(
#     "What is the keyword to start a class?", #question
#     {a: "end", b: "class", c: "def", d: "begin"}, #answer choices
#     "b" #correct answer
#     )
# puts question.ask_question
>>>>>>> 5fc43e64b7b202673ce1f7aeaafec1b3bce18237
=======
>>>>>>> carl
