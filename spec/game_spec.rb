require './lib/game.rb' 

describe Game do
  it 'returns the board' do
    expect(subject.board).to be_an_instance_of(Array)
  end
  describe '#evolve' do
  it 'returns updated array' do
    expect(subject.board).to be_an_instance_of(Array)
    expect(subject.board.size).to eq(3)
  end   
  end
end