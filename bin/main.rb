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

puts "#{player1.name} your token is: #{player1.token}. #{player2.name} your token is: #{player2.token}"

i = 0
while i < 9
  if i.even?
    up_next = player1
  elsif i.odd?
    up_next = player2
  end
  puts "#{up_next.name} its your move. Enter the number of the position where you wish to place your token."
  location = gets.chomp.to_i - 1
  while location < 0 || location > 8
    puts 'That position is not on the board. Valid selections are between numbers 1 to 9!'
    location = gets.chomp.to_i - 1
  end
end
