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

def get_input
  puts "Type a question to ge the answer, or type QUIT to exit the program"
  question = gets.strip
  
  if question.downcase == "quit"
    puts "Thanks for using the Magic 8-ball. Goodbye"
    exit
  end

  puts init_answers.sample
  get_input
end

get_input
