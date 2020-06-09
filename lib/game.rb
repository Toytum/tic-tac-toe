require_relative 'board'

class Game
  be_over = false
  @board = Board.new()
  def init(game_board = nil)
    @board = game_board
  end
  def board
    board
  end
  def end
    if board.full?
      be_over = true
    end
    return be_over
  end


end
