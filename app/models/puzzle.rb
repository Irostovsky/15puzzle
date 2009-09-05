class Puzzle
  require 'mathn'

  attr_accessor :matrix
  DIMENSION = 4

  def initialize(random = false)
    arr = (1..15).to_a << 0
    arr = arr.sort_by{rand} if random
    @matrix = new_from_arr(arr, DIMENSION)

  end

  def new_from_arr(arr, dimension)
    prepared_rows = []
    dimension.times{ prepared_rows << arr.slice!(0, dimension) }
    Matrix.rows(prepared_rows)
  end

end