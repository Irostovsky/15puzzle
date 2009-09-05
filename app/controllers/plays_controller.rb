class PlaysController < ApplicationController


  def new
    @puzzle = Puzzle.new(true)
    session[:puzzle] = @puzzle
  end

  def edit
    move_param = params[:move_param]
    @puzzle = session[:puzzle]
    if @puzzle.can_move?
      @puzzle.move! move_param
      session[:puzzle] = @puzzle
      flash[:notice] = 'You are win!!!' if @puzzle.completed?
    else
      flash[:error] = "Bad step: #{move_param}"
    end
    render :new
  end


end
