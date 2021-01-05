class Printouts
  def ask_question(question)
    puts question
    gets.chomp
  end

  def respond_to_answer(bool)
    puts bool ? "Correct answer" : "Nope, idiot"
  end

  def score(lives)
    puts "You have #{lives} #{lives == 1 ? 'life' : 'lives'} remaining"
  end

  def linebreak_message(message)
    puts "\n------ #{message} ------"
  end

  def winning_message(winner)
    puts "#{winner} wins!"
    puts "... national anthems begin to play\n\n"
  end
end
