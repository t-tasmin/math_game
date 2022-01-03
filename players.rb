class Player

  attr_accessor :lives
  
  def initialize(name)
    @name = name
    @lives= 3
  end

  def lives_lose
    @lives -= 1
  end  

end