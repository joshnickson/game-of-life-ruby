require './lib/game.rb' 

describe Game do
  it 'returns the board' do
    expect(subject.board).to be_an_instance_of(Array)
  end
end