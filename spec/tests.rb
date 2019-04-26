require './question.rb'

describe Question do 
    # context “When testing the Question class” do 
       
       it "should say 'What is the keyword to start a class?' when we call the ask_question method" do 
          question = Question.new(
                "What is the keyword to start a class?", #question
                {a: "end", b: "class", c: "def", d: "begin"}, #answer choices
                "b" #correct answer
                )
            test = question.question
          expect(question).to eq "What is the keyword to start a class?"
       end
    # end
 end