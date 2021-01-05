class Player
  attr_accessor :lives
  attr_reader :id, :name

  def initialize(id)
    @id = id
    @name = "Player#{@id}"
    @lives = 3
  end

  def lose_a_life
    self.lives -= 1
  end
end
