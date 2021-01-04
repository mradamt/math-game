# require other files
require './player'
require './question'

class Game
  attr_accessor :cur_player
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @cur_player = self.player1
  end

  def ask_question(question)
    puts question
    gets.chomp
  end

  def put_score
    # puts "... scores are P#{self.player1.id} has #{self.player1.lives}/3 ... P#{self.player2.id} has #{self.player2.lives}/3"
    puts "You have #{self.cur_player.lives} lives remaining\n\n"
  end

def respond_to_answer(bool)
    if bool
      puts "Correct answer"
      return 0
    else
      puts "Nope, idiot"
      self.put_score
      return -1
    # puts bool ? "Correct answer" : "Nope, idiot"
    # bool ? 0 : -1
    end
  end

  def put_linebreak_message(message)
    puts "------ #{message} ------"
  end

  def toggle_current_player
    self.cur_player = 
      if self.cur_player == self.player1 
        self.player2
      else
        self.player1
      end
  end

  def play
    game_over = false
    while game_over == false do
      # Announce new turn
      self.put_linebreak_message(self.cur_player.name)
      # Instantiate new question
      q = Question.new
      # Prompt player with question and save answer
      a = self.ask_question(q.build_question)
      # Tell user if their answer is correct
      score_change = respond_to_answer(q.correct?(a))
      # Update player's 'score'
      self.cur_player.lives += score_change
      # Print current 'score'
      # put_score
      # End the game if player's score is now 0
      if self.cur_player.lives == 0
        game_over = true
      end
      # Toggle player
      toggle_current_player
    end
    # Print out winner, and 'game over'
    self.put_linebreak_message("Game Over")
    puts "#{cur_player.name} wins!"
    puts "(national anthems begin to play)"
  end
end

game = Game.new
game.play
