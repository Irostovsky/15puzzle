module ApplicationHelper

  def clickable?(value)
    @puzzle.can_move? value
  end

end
