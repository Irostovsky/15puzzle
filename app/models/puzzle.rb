class Puzzle

  require 'mathn'
  require 'enumerator'

  attr_accessor :state
  
  def initialize(options = {})
    @dimension = options[:dim].to_i > 0 ? options[:dim].to_i : 4
    @state = ((1..(@dimension ** 2)-1).to_a << 0).sort_by{ |a| options[:random] ? rand : 0 }
  end

  def matrix(array = @state)
    matrix = []
    array.each_slice(@dimension){|arr| matrix << arr }
    matrix
  end  

  def move!(value)
    if y(value) == y(0)
      @state = move_in_row(@state, value)
    else
      @state = matrix(move_in_row(matrix.transpose.flatten, value)).transpose.flatten
    end  
  end

  def can_move?(value)
    return false unless @state.index(value)
    ((x(value) == x(0)) || (y(value) == y(0))) && !value.zero?
  end

  def x(value)
    @state.index(value).divmod(@dimension)[1]
  end  

  def y(value)
    @state.index(value).divmod(@dimension)[0]
  end  

  def completed?
    @state == Puzzle.new.state
  end

  private

  def move_in_row(array, value)
    value_index = array.index value
    array.delete 0
    array.insert value_index, 0
    array
  end  

end
