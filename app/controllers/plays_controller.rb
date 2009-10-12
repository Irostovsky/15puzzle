class PlaysController < ApplicationController

  def new
    @puzzle = Puzzle.new(:random => true, :dim => params[:dim])
    session[:puzzle] = @puzzle
  end

  def edit
    move_param = params[:p]
    @puzzle = session[:puzzle]
    @puzzle.try_move! move_param
    flash[:error] = @puzzle.error
    flash[:notice] = @puzzle.notice
    render :new
  end

end
