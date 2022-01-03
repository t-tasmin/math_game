class Question

  def generate(player)
    num1=rand(1..10)
    num2=rand(1..10)
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
    @correct = num1 + num2
    return @correct
  end  

  
  def verify(user, player)
    if (user == @correct)
      puts "#{player.name}: Yes! You are Correct"
    else
      puts "#{player.name}: Seriously? No!"
      player.lives_lose
    end  
  end


end