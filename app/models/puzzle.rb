class Puzzle

  require 'enumerator'

  attr_accessor :state
  attr_reader :error, :notice

  def initialize(options = {})
    dim_int = options[:dim].to_i 
    @dimension = dim_int > 0 ? dim_int : 4
    @completed = (1..(@dimension ** 2) - 1).to_a << 0 
    @state = @completed.sort_by{ |a| options[:random] ? rand : 0 }
    @steps = 0
  end

  def matrix(array = @state)
    matrix = []
    array.each_slice(@dimension){|arr| matrix << arr }
    matrix
  end  

  def try_move!(value)
    @steps += 1
    @error = @notice = nil
    @cell = value.to_i
    move! if movable? value
  end

  private

  def move!
    if one_row?
      @state = move_in_row(@state)
    else
      transpose_state = matrix.transpose.flatten 
      state_after_move = move_in_row transpose_state 
      @state = matrix(state_after_move).transpose.flatten
    end  
    @notice = "You are win for #{@steps} steps" if @state == @completed
  end

  def movable?(value)
    movable = false
    if @state.include?(@cell) && (/^\d+$/ =~ value.to_s) 
      movable = (one_row? || one_column?) && !@cell.zero?
      @error = "Not movable value: #{value}" unless movable
    else
      @error = "Bad value: #{value}"
    end  
    movable
  end

  def one_row?
    y(@cell) == y(0)
  end

  def one_column?
    x(@cell) == x(0)
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

  def move_in_row(array)
    value_index = array.index @cell
    array.delete 0
    array.insert value_index, 0
    array
  end  

end
