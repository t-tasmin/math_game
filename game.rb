require './players'
require './question'

class Game

 
  def start
    puts 'Start Game'
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    turn
  end

  def turn
    question=Question.new
    correct = question.generate(@player1)
    user = gets.chomp.to_i
    question.verify(user, @player1)
    
    if @player1.lives == 0
      puts 'player 2 wins'
      puts '----- GAME OVER ----'
    else
      puts '----- NEW TURN ----'
    end  
    
  end  
    

  
  

 end