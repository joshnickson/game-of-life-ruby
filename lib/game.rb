class Game
  attr_reader :board
  def initialize(board = Array.new(3, [0,0,0]))
    @board = board
  end
end