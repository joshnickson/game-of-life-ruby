require './lib/game.rb' 

describe 'Game' do
  let (:empty_board) { [
      [0,0,0],
      [0,0,0],
      [0,0,0]
    ]}

  it 'has a board' do
    game = Game.new(empty_board)
    expect(game.board).to eq empty_board
  end
  
  it 'cell dies if fewer than 2 live neighbors' do
  board_2 = [
      [0,0,0],
      [0,1,0],
      [0,0,0]
    ]
    game = Game.new(board_2)
    game.evolve
    expect(game.board).to eq empty_board
  end
end