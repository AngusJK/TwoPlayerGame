class Player

  def initialize(name)
    @lives = 3
    @name = name
  end

  def verify
    unless user_answer == user_answer
      @lives -= 1
      puts @lives
end

puts "Player 1, what is your name?"
player1 = Player.new(gets.chomp)

puts "Player 2, what is your name?"
player2 = Player.new(gets.chomp)

def random_number_generator
  num1 = rand(1..20)
  num2 = rand(1..20)
  return num1 + num2
end

def question_generator(name, num1, num2)
  puts "#{}, what is #{} plus #{}?"
end



