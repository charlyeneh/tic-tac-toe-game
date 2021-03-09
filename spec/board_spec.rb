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