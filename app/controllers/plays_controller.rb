class PlaysController < ApplicationController

  def new
    @puzzle = Puzzle.new(true)
    session[:puzzle] = @puzzle
  end

  def edit
    move_param = params[:p]
    @puzzle = session[:puzzle]
    if @puzzle.can_move?(move_param.to_i)
      @puzzle.move! move_param.to_i
      session[:puzzle] = @puzzle
      flash[:notice] = 'You are win!!!' if @puzzle.completed?
    else
      flash[:error] = "Bad step: #{move_param}"
    end
    render :new
  end

end
