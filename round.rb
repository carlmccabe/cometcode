require 'yaml'
require './question'

easy = YAML.load(File.read("easyQuestions.yml"))
class Round
    def initialize

    end
end


#tests
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