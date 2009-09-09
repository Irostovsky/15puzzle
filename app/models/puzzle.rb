class Puzzle
  require 'mathn'

  attr_accessor :matrix
  DIMENSION = 4

  def initialize(random = false)
    arr = (1..15).to_a << 0
    arr = arr.sort_by{rand} if random
    @matrix = Matrix.new_from_arr(arr, DIMENSION)

  end

  def move!(value)
    @matrix.move!(0, value)
  end

  def can_move?(value)
    value_pos = @matrix.pos(value)
    (value_pos[0] == zero_pos[0]) || (value_pos[1] == zero_pos[1])
  end

  def zero_pos
    @matrix.pos(0)
  end

  def completed?
    @matrix == Puzzle.new.matrix
  end

end

class Matrix

  def []=(i, j, value)
    @rows[i][j] = value
  end

  def move!(from, to)
    from_row = pos(from)[0]
    from_col = pos(from)[1]
    to_row = pos(to)[0]
    to_col = pos(to)[1]
    if from_row == to_row
      self.scroll_row(from_row, from_col, to_col)
    end
    if from_col == to_col
      arr_t = self.t
      arr_t.scroll_row(from_col, from_row, to_row)
      arr_t = arr_t.t
      @rows = arr_t.row_vectors
    end
  end

  def self.new_from_arr(arr, dimension)
    prepared_rows = []
    dimension.times{ prepared_rows << arr.slice!(0, dimension) }
    Matrix.rows(prepared_rows)
  end

  def pos(value)
    res = []
    (1..row_size).each do |i|
      (1..column_size).each do |j|
        res = [i-1, j-1] if self[i-1, j-1] == value
       end
    end
    res
  end

  def scroll_row(row, from_col, to_col)
#     @rows[row].scroll(from_col, to_col)
    @rows[row] = @rows[row].to_a.scroll(from_col, to_col)
  end

end

class Array
  def scroll(window_index, target_index)
    indexes = [window_index, target_index]
    arr = self[indexes.min..indexes.max]
    if window_index < target_index
      arr << arr.shift
    else
      arr.reverse!
      arr << arr.shift
      arr.reverse!
    end
    self[indexes.min..indexes.max] = arr
    self
  end

end