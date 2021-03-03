# frozen_string_literal: true

# The tic-tac-toe board is displayed

puts '+-----------+'
puts '| 1 | 2 | 3 |'
puts '+-----------+'
puts '| 4 | 5 | 6 |'
puts '+-----------+'
puts '| 7 | 8 | 9 |'
puts '+-----------+'

# A welcome message is displayed so as to inform players that the game is on. Instructions follow.
puts 'Welcome to TIC-TAC-TOE!'
# Obtain input from players. This could be their name but it can also be their chosen token
puts 'Player 1 enter your name.'
name_player1 = gets.chomp
puts 'Player 2 enter your name'
name_player2 = gets.chomp
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
    puts "#{player} its your move. Enter the number of   the position where you wish to place your token."
    move = gets.chomp.to_i - 1

    # Check that position chosen by the player is between 1 and 9 and is an empty one.
    # This is what cosntitutes a valid move.
    if move > 8 || move.negative?
      puts 'That position is not on the board. Select   again.'
      move = gets.chomp.to_i - 1
    end
    if board[move] == 'O' || board[move] == 'X'
      puts 'That position is already occupied. Select from  among the empty positions.'
      move = gets.chomp.to_i - 1
    end
    board[move] = token
  
    # At every turn the set of positions already taken is  compared to the sets of winning combinations.
    if board[0] == board[1] && board[1] == board[2]
      puts "The winner is #{player}"
      i = 9
      elsif i == 8
      puts "It\'s a tie!"
    end
    i += 1
  end

  # Players are asked if they'd like to play another round or end the game. The game ends or re-starts accordingly.
  puts 'Do you wish to play another round? Y / N'
  willing = gets.chomp
  if willing == 'N'
    no_further = true
    puts 'Game over!'
  end
end