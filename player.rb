require 'pry'
class Player
  def initialize(name)
    @lives = 3
    @name = name
  end

  def random_number_generator
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def question_generator
    puts "#{@name}, what is #{@num1} plus #{@num2}?"
  end 

  def verify
    unless @player_answer == @answer
      @lives -= 1
      puts "You lose!" if @lives == 0
      puts @lives
    end
  end
end

puts "Player 1, what is your name?"
player1 = Player.new(gets.chomp)

puts "Player 2, what is your name?"
player2 = Player.new(gets.chomp)

binding.pry

while player1(lives) > 0 && player2(lives) >0
player1.question_generator
@player_answer = gets.chomp.to_i

player1.verify

player2.question_generator
player_answer = gets.chomp.to_i

player2.verify
end




