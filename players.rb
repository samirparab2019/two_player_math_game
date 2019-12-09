class Players
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3   
    
  end

  def lose_life(lives)
    @lives = lives - 1
  end
end