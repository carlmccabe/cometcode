class Question
    attr_reader :correct_answer, :question
    def initialize(question, answer_choices, answer)
    @correct_answer = answer
    @question = question
    @answer_choices = answer_choices
    end

    def ask_question
        puts question
    end
    def print_answer_choices
        puts "====================="
        # puts @answer_choices
        puts "a) #{@answer_choices[:a]}"
        puts "b) #{@answer_choices[:b]}"
        puts "c) #{@answer_choices[:c]}"
        puts "d) #{@answer_choices[:d]}"
        puts "====================="
    end


    def print_correct_answer
	puts "#{correct_answer}) #{@answer_choices[correct_answer.to_sym]}"
    end
end

# tests
# Can create a new question
# Expected: No error = passed
question = Question.new(
    "What is the keyword to start a class?", #question
    {a: "end", b: "class", c: "def", d: "begin"}, #answer choices
    "b" #correct answer
    )
# Can print the question
# Expected: prints to screen: "What is the keyword to start a class?"
puts question.ask_question
# Can print possible answers
# Expected: prints to screen: the four answer choices in two columns
puts question.print_answer_choices
# Can return the correct answer letter
# Expected: returns "b"
puts question.correct_answer
# Can print the correct answer
# Expected: returns "b) class"
question.print_correct_answer
