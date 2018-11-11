require './lib/game.rb' 

describe 'Game' do
  it 'has a board' do#
    board = [
      [0,0,0],
      [0,0,0],
      [0,0,0]
    ]
    game = Game.new(board)
    expect(game.board).to eq board
  end
end