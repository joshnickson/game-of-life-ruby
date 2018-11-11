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
  
  it 'cell dies if fewer than 2 live neighbours' do
    board_2 = [
      [0,0,0],
      [0,1,0],
      [0,0,0]
    ]
    game = Game.new(board_2)
    game.evolve
    expect(game.board).to eq empty_board
  end
  
  it 'cell dies if more than three live neighbours' do
    board_3 = [
      [0,1,0],
      [0,1,1],
      [0,1,1]
    ]
    game = Game.new(board_3)
    game.evolve
    expect(game.board[1][1]).to eq 0
  end
  
end