class Question
  attr_accessor :answer, :show

  def initialize
    @num1 = rand(1..20) 
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @show = "#{@num1} + #{@num2} = ?"
  end
end