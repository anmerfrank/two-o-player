class Questions
  attr_accessor :answer, :num1, :num2, :question

  def initialize
  @num1 = rand(20)
  @num2 = rand(20)

  @answer = @num1 + @num2
  
  @question = "What is the sum of #{@num1} + #{@num2}?"
  
  end
end
