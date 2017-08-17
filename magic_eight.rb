require "pry"

def init_answers
answers = [
          "It is certain", 
          "It is decidedly so",
          "Without a doubt",
          "Yes definitely",
          "You may rely on it",
          "As I see it, yes",
          "Most likely",
          "Outlook good",
          "Yes",
          "Signs point to yes",
          "Reply hazy try again",
          "Ask again later",
          "Better not tell you now",
          "Cannot predict now",
          "Concentrate and ask again",
          "Don\'t count on it",
          "My reply is no",
          "My sources say no",
          "Outlook not so good",
          "Very doubtful"
          ]
end

def get_input(answers)
  puts "Type a question to ge the answer, or type QUIT to exit the program"
  question = gets.strip
  
  if question.downcase == "quit"
    puts "Thanks for using the Magic 8-ball. Goodbye"
    exit
  end

  case question
    when "add_answers"
      puts "Type the custom answer below to add it to the 8-ball"
      answers << gets.strip
      puts "Answer added"
    when "reset_answers"
      answers = init_answers
      puts "Answers reset to default"
    when "print_answers"
      "Here is the list of current answers"
      puts answers.join("\n")
    else
      puts answers.sample
  end
  
  get_input(answers)
end

answers = init_answers
get_input(answers)
