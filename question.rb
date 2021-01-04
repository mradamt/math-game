class Question
  attr_reader :num1, :num2, :ans
  def initialize
    # @num1 = rand(1..20)
    # @num2 = rand(1..20)
    @num1 = 2
    @num2 = 3
    @ans = self.num1 + self.num2
  end

  def build_question
    "Answer this math question: #{self.num1} + #{self.num2} = ?"
  end

  def correct?(player_attempt)
    self.ans == player_attempt
  end
end

q1 = Question.new
puts q1.build_question
puts q1.correct?(4)
puts q1.correct?(5)