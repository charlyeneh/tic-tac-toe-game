class Player
  attr_reader :name, :token
  def initialize(name, token)
    @name = name
    @token = token
  end
end


puts 'Welcome to TIC-TAC-TOE!'
puts 'Player 1 enter your name.'
name_player1 = gets.chomp.upcase
puts 'Player 2 enter your name'
name_player2 = gets.chomp.upcase
puts "#{name_player1}, choose your token: either O or X"
token_player1 = gets.strip.upcase
until %w[X O].include?(token_player1)
  puts 'That is not a valid token. Choose either O or X'
  token_player1 = gets.strip.upcase
  if token_player1 != 'X' && token_player1 != 'O'
    puts "Ok #{name_player1}, you get assigned X"
    token_player1 = 'X'
  end
end
token_player2 = token_player1 == 'X' ? 'O' : 'X'

player1 = Player.new(name_player1, token_player1)
player2 = Player.new(name_player2, token_player2)


