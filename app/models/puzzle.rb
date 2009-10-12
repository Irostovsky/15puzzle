class Puzzle

  require 'enumerator'

  attr_accessor :state
  
  def initialize(options = {})
    dim_int = options[:dim].to_i 
    @dimension = dim_int > 0 ? dim_int : 4
    arr = (1..(@dimension ** 2) - 1).to_a << 0 
    @state = arr.sort_by{ |a| options[:random] ? rand : 0 }
  end

  def matrix(array = @state)
    matrix = []
    array.each_slice(@dimension){|arr| matrix << arr }
    matrix
  end  

  def move!(value)
    value = value.to_i
    if one_line?(value)
      @state = move_in_row(@state, value)
    else
      transpose_state = matrix.transpose.flatten 
      state_after_move = move_in_row(transpose_state, value) 
      @state = matrix(state_after_move).transpose.flatten
    end  
  end

  def can_move?(value)
    value = value.to_i
    return false unless @state.index(value)
    (one_line?(value) || one_column?(value)) && !value.zero?
  end

  def completed?
    @state == Puzzle.new(:dim => @dimension).state
  end

  private

  def one_line?(value)
    y(value) == y(0)
  end

  def one_column?(value)
    x(value) == x(0)
  end
    
  def x(value)
    indexes(value)[1]
  end  

  def y(value)
    indexes(value)[0]
  end  

  def indexes(value)
    @state.index(value).divmod(@dimension)
  end

  def move_in_row(array, value)
    value_index = array.index value
    array.delete 0
    array.insert value_index, 0
    array
  end  

end
