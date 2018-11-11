class Game
  attr_reader :board
  
  def initialize(board = Array.new(3, [0,0,0]))
    @board = board
  end
  
  def evolve
    new_state = @board.each_with_index.map do |row_group, row|
      row_group.each_with_index.map do |cell, column| 
        check_neighbours(cell, row, column) ? 1 : 0
      end
    end
    @board = new_state
  end
  
  def check_neighbours(cell, row, col)
    get_neighbours(cell, row, col).count(1) >= 2    
  end
  
  def get_neighbours(cell, row, col)
    neighbours = []
    if (row != 0)
      neighbours.concat([@board[row-1][col-1], @board[row-1][col], @board[row-1][col+1]])
    end 
    neighbours.concat([@board[row][col-1], @board[row][col+1] == 1])
    if (row != (@board.size - 1))
      neighbours.concat([@board[row+1][col-1], @board[row+1][col], @board[row+1][col+1]])
    end
    neighbours
  end
end