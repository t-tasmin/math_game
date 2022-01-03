require './players'
require './question'

class Game

   def start
    puts 'START GAME'
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    turn
  end

  def turn
    question=Question.new
    correct = question.generate(@player1)
    user = gets.chomp.to_i
    question.verify(user, @player1)
    puts "P1: #{@player1.lives}/3  vs. P2: #{@player2.lives}/3"
    
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{player2.lives}/3"
      puts '----- GAME OVER ----'
    else
      puts '----- NEW TURN ----'
      question=Question.new
      correct = question.generate(@player2)
      user = gets.chomp.to_i
      question.verify(user, @player2)
      puts "P1: #{@player1.lives}/3  vs. P2: #{@player2.lives}/3"
        if @player2.lives == 0
          puts "Player 1 wins with a score of #{@player1.lives}/3"
          puts '----- GAME OVER ----'
        else
          puts '----- NEW TURN ----'
          turn
        end  
    end  
    
  end  
    

  
  

 end