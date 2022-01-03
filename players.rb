class Player

  attr_accessor :lives
  attr_accessor :name

  def initialize(name)
    @name = name
    @lives= 3
  end

  def lives_lose
    @lives -= 1
  end  

end