require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  describe '#display' do
    it 'Prints board grid' do
      board = Board.new
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(board.display).to eq(  %(
        #{@board[0]}    |    #{@board[1]}    |    #{@board[2]}
      ---------------------------
        #{@board[3]}    |    #{@board[4]}    |    #{@board[5]}
      ---------------------------
        #{@board[6]}    |    #{@board[7]}    |    #{@board[8]}))
    end
  end
end

describe '#update_board' do
    it 'updates chosen position to player assigned token' do
      board = Board.new
      expect(board.update_board(4, 'X')).to eql('X')
    end
end

describe '#position_taken?' do
  it 'returns true if position is already taken' do
    board = Board.new
    player = Player.new('German', 'X', board)
    player.turn(6)
    expect(board.position_taken?(6)).to be(true)
  end
  it 'returns false if position is not taken' do
    board = Board.new
    player = Player.new('Julius', 'O', board)
    player.turn(7)
    expect(board.position_taken?(3)).to be(false)
  end
end

describe '#draw?' do
    it 'returns true if all elements in board are a string' do
      board = Board.new
      player = Player.new('German', 'O', board)

      9.times { |index| player.turn(index + 1) }
      expect(board.draw?).to be(true)
    end

    it 'returns false if not all elements in board are a string' do
      board = Board.new
      player = Player.new('German', 'O', board)

      8.times { |index| player.turn(index + 1) }
      expect(board.draw?).to be(false)
    end
  end