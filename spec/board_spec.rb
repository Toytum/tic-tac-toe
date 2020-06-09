require_relative '../lib/board'

describe 'A Tic Tac Toe board' do
  
  it 'exists' do
    Board.new
  end

  it 'can place tokens at locations' do
    game_board = Board.new
    game_board.place("FakeToken", :top , :left)
    expect(game_board.token_at(:top, :left)).to eq("FakeToken")
  end

  it 'can reset all loactions' do 
    game_board = Board.new
    game_board.place("FakeToken2", :bottom , :right)
    game_board.reset
    expect(game_board.token_at(:bottom, :right)).to eq(nil)
  end

  it 'can check to see if board is empty' do
    game_board = Board.new
    game_board.place("FakeToken3", :middle, :middle)
    expect(game_board.empty?).to eq(false)
  end

  it 'can check to see if board is full' do
    game_board = Board.new
    game_board.place("FakeToken4", :top, :left)
    game_board.place("FakeToken5", :top, :middle)
    game_board.place("FakeToken6", :top, :right)
    game_board.place("FakeToken7", :middle, :left)
    game_board.place("FakeToken8", :middle, :middle)
    game_board.place("FakeToken9", :middle, :right)
    game_board.place("FakeToken10", :bottom, :left)
    game_board.place("FakeToken11", :bottom, :middle)
    game_board.place("FakeToken12", :bottom, :right)
    expect(game_board.full?).to eq(true)
  end

  # it 'can display board' do
  #   game_board = Board.new
  #   game_board.place("FakeToken13", :middle, :middle)
  # end
end
