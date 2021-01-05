# require other files
require './player'
require './question'
require './printouts'

class Game
  attr_accessor :cur_player
  attr_reader :player1, :player2, :prnt

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @cur_player = self.player1
    @prnt = Printouts.new
  end

  def toggle_current_player
    self.cur_player = self.cur_player == self.player1 ? self.player2 : self.player1
  end

  def play
    game_over = false
    while game_over == false do
      # Instantiate new question and new printout
      q = Question.new

      # Announce new turn
      self.prnt.linebreak_message(self.cur_player.name)
      
      # Prompt player with question, and save answer
      ans = self.prnt.ask_question(q.build_question)

      ans_bool = q.correct?(ans)
      # Tell user if their answer is correct
      self.prnt.respond_to_answer(ans_bool)
      
      # If answer incorrect subtract 1 life and print lives remaining
      if !ans_bool
        self.cur_player.lose_a_life
        self.prnt.score(self.cur_player.lives)
      end
      
      # End the game if player's score is now 0
      if self.cur_player.lives == 0
        game_over = true
      end
      
      # Toggle player
      toggle_current_player
    end
    
    # Print out winner, and 'game over' message
    self.prnt.linebreak_message("Game Over")
    self.prnt.winning_message(cur_player.name)
  end
end

game = Game.new
game.play
