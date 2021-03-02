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

no_further = false
until no_further
  board =["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  i = 0 
# Run each instance of the game until either there is a winner or all positions are taken
while i < 9
  if i.even? 
    player = name_player_1
    token = token_player_1
  elsif
    player = name_player_2
    token = token_player_2
  end
  puts "#{player} it's your move. Enter the number of the position where you wish to place your token."
  move = (gets.chomp.to_i) - 1

# Check that position chosen by the player is between 1 and 9 and is an empty one. This is what cosntitutes a valid move.
  if move > 8 || move < 0
    puts "That position is not on the board. Select again."
    move = (gets.chomp.to_i) -1
  end
  if board[move] == "O" || board[move] == "X"
    puts "That position is already occupied. Select from among the empty positions."
    move = (gets.chomp.to_i) -1
  end
  board[move] = token

  # The updated tic-tac-toe board is displayed with the tokens displayed on their assigned positions.
  p board
 # At every turn the set of positions already taken is compared to the sets of winning combinations.
  if board[0] == board[1] && board[1] == board[2]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[3]== board[4] && board[4]== board[5]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[6] == board[7] && board[7]== board[8]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[0] == board[3] && board[3] == board[6]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[1] == board[4] && board[4] == board[7]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[2] == board[5] && board[5] == board[8]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[0] == board[4] && board[4] == board[8]
    winner = player
    puts "The winner is #{player}"
    i = 9
  elsif board[2] == board[4] && board[4] == board[6]
    winner = player
    puts "The winner is #{player}"
    i = 9
  end

  # Players are asked if they'd like to play another round or end the game. The game ends or re-starts accordingly.
    puts "Do you wish to play another round? Y / N"
    willing = gets.chomp
    if willing == "N"
      no_further = true
      puts "Game over!"
    end
  end
  
