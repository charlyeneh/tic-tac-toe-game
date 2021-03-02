# The tic-tac-toe board is displayed

puts "+-----------+"
puts "| 1 | 2 | 3 |"
puts "+-----------+"
puts "| 4 | 5 | 6 |"
puts "+-----------+"
puts "| 7 | 8 | 9 |"
puts "+-----------+"

# A welcome message is displayed so as to inform players that the game is on. Instructions follow.
puts "Welcome to TIC-TAC-TOE!"
# Obtain input from players. This could be their name but it can also be their chosen token
puts "Player 1 enter your name."
name_player_1 = gets.chomp
puts "Player 2 enter your name"
name_player_2 = gets.chomp
puts "#{name_player_1}, choose your token: either O or X"
token_player_1 = gets.strip.upcase

# Check to see that player 1 chooses either X or O as their token and nothing other
until %w[X O].include?(token_player_1)
  puts "That is not a valid token. Choose either O or X"
  token_player_1 = gets.strip.upcase
  if token_player_1 != 'X' && token_player_1 != 'O'
    puts "Ok #{name_player_1}, you get assigned X"
    token_player_1 = 'X'
  end
end
token_player_2 = token_player_1 == "X" ?
  "O" : "X"
puts "#{name_player_1} your token is: #{token_player_1}. #{name_player_2} your token is: #{token_player_2}"

# Check that position chose by the player is between 1 and 9 and is an empty one. This is what cosntitutes a valid move.
  if move > 8 || move < 0
    puts "That position is not on the board. Select again."
    move = (gets.chomp.to_i) -1
  end
  if board[move] == "O" || board[move] == "X"
    puts "That position is already occupied. Select from among the empty positions."
    move = (gets.chomp.to_i) -1
  end
  board[move] = token
