# A welcome message is displayed.
puts 'Welcome to TIC-TAC-TOE!'

# Obtain input from players. 
puts 'Player 1 enter your name.'
name_player1 = gets.chomp
puts 'Player 2 enter your name'
name_player2 = gets.chomp

puts "Hi #{name_player1} and #{name_player2} welcome to Tic Tac Toe game"

#Ask both players to choose their symbols(X or 0)
puts "#{name_player1}, choose your token: either O or X"
token_player1 = gets.strip.upcase

# Check to see that player 1 chooses either X or O as their token and nothing other
until %w[X O].include?(token_player1)
  puts 'That is not a valid token. Choose either O or X'
  token_player1 = gets.strip.upcase
  if token_player1 != 'X' && token_player1 != 'O'
    puts "Ok #{name_player1}, you get assigned X"
    token_player1 = 'X'
  end
end
  token_player2 = token_player1 == 'X' ? 'O' : 'X'
  puts "#{name_player1} your token is: #{token_player1}. #{name_player2} your token is: #{token_player2}"

no_further = false
until no_further
  board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  i = 0

# Run each instance of the game until either there is a winner or all positions are taken
while i < 9
  if i.even?
    (player = name_player1)
    token = token_player1
  else
    (player = name_player2)
    token = token_player2
  end
  puts "#{player} its your move. Enter the number of  the position where you wish to place your token."
  move = gets.chomp.to_i - 1

# The updated tic-tac-toe board is displayed with the   tokens displayed on their assigned positions.
p board

# Deciding the game outcome
game_on = true
winner = false
draw = false
  
# initial instructions for player
while game_on
  puts 'Player_1 your turn. Choose a number between 1 and 9'
# loop for each move
movement = false
while movement == false
  p_one = gets.chomp.to_i
  if (1..9).include?(p_one)
    movement = true
    board
  else
    puts 'wrong input'
  end
end

game_on = false if winner || draw
# loop for each move
puts 'Player2 your turn. Choose a number between 1 and9'
movement = false
while movement == false
  p_two = gets.chomp.to_i
  if (1..9).include?(p_two)
    movement = true
    board
    winner = player_one.to_s
  else
    puts 'wrong input'
  end
end
  game_on = false if winner || draw
end

# display the result after winning
winning = 'winning cases'
puts "The winner is #{winner}" if winning

#  draww movement
puts 'There is no winner, It is a DRAW' if draw 

# Players are asked if they'd like to play another round or end the game. The game ends or re-starts accordingly.
puts 'Do you wish to play another round? Y / N'
willing = gets.chomp
if willing == 'N'
  no_further = true
  puts 'Game over!'
end
