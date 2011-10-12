
module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Team.BERNER-Bikes.com"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end
end