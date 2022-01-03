require './players'
require './question'

class Game

   def start
    puts 'START GAME'
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    turn
  end

  def generate_verify
    question=Question.new
    question.generate(@player)
    user = gets.chomp.to_i
    question.verify(user, @player)
  end  

  def game_status
    puts "P1: #{@player1.lives}/3  vs. P2: #{@player2.lives}/3"
  end  

  def win_message
    if @player.lives == 0
      puts "#{@other.name} wins with a score of #{@other.lives}/3"
      puts '----- GAME OVER ----'
      exit(0)
    end
  end

  def turn
    @player = @player1
    @other = @player2
    generate_verify
    game_status
    win_message
    
    puts '----- NEW TURN ----'
    @player = @player2
    @other = @player1
    generate_verify
    game_status
    win_message

    puts '----- NEW TURN ----'
    turn
 
  end  
 
 end