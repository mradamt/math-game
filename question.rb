class Question
  attr_reader :num1, :num2, :ans
  def initialize
    @num1 = 1
    @num2 = 2
    # @num1 = rand(1..20)
    # @num2 = rand(1..20)
    @ans = self.num1 + self.num2
  end

  def build_question
    "Your math question is:  #{self.num1} + #{self.num2} = "
  end

  def correct?(player_attempt)
    self.ans == player_attempt.to_i
  end
end
