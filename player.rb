require 'pry'
require 'pry-nav'

class Player
  attr_accessor :lives, :name 

  def initialize(name)
    @name = name
    @lives = 3
  end

  def question_generator
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    puts "#{@name}, what is #{@num1} plus #{@num2}?"
    @player_answer = gets.chomp.to_i
  end

  def verify
    if @player_answer == @answer
      puts "Correct!"
    else @lives -= 1
        if @lives == 0
          puts "You lose!"
        else  
          puts "#{@name}'s lives is now at: #{@lives}"
        end
    end
  end
  
end

def game

  puts "Player 1, what is your name?"
  player1 = Player.new(gets.chomp)

  puts "Player 2, what is your name?"
  player2 = Player.new(gets.chomp)

  while player1.lives > 0 && player2.lives > 0
    player1.question_generator

    player1.verify

    player2.question_generator

    player2.verify
  end

end

game



