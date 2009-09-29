class Puzzle

  require 'mathn'

  attr_accessor :state
  
  DIMENSION = 4

  def initialize(random = false)
    @state = (1..15).to_a.sort{ |a, b| random ? rand : 0 } << 0
  end

  def move!(value)
    @matrix.move!(0, value.to_i)
  end

  def can_move?(value)
    value_pos = @matrix.pos(value.to_i)
    ((value_pos[0] == zero_pos[0]) || (value_pos[1] == zero_pos[1])) && (value_pos != zero_pos)
  end

  def zero_pos
    @matrix.pos(0)
  end

  def completed?
    @matrix == Puzzle.new.matrix
  end

  def solvable?
     @matrix.solvable?
  end

end

class Matrix

  def solvable?
    sum = self.pos(0)[0] + 1
    m_arr = self.to_a.flatten
    m_arr.delete(0)
    m_arr.map do |item|
      index = m_arr.index(item)
      sum += m_arr[index+1..-1].select{ |sub_item| sub_item < item}.size
    end
    (sum % 2).zero?
  end

  def move!(from, to)
    from_row, from_col, to_row, to_col = [pos(from), pos(to)].flatten
    if from_row == to_row
      self.scroll_row(from_row, from_col, to_col)
    end
    if from_col == to_col
      @rows = self.t.scroll_row(from_col, from_row, to_row).t.to_a
    end
  end

  def self.new_from_arr(arr, dimension)
    prepared_rows = []
    dimension.times{ prepared_rows << arr.slice!(0, dimension) }
    self.rows(prepared_rows)
  end

  def pos(value)
    @rows.map do |row|
      row.map do |item|
        return [@rows.index(row), row.index(item)] if value == item
      end
    end
  end

  def scroll_row(row, from_col, to_col)
    @rows[row] = @rows[row].scroll(from_col, to_col)
    self
  end

end

class Array

  def scroll(window_index, target_index)
    indexes = [window_index, target_index]
    arr = self[indexes.min..indexes.max]
    if window_index < target_index
      arr << arr.shift
    else
      (arr.reverse! << arr.shift).reverse!
    end
    self[indexes.min..indexes.max] = arr
    self
  end

end
