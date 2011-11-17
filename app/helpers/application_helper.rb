
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

  def fb_image
  	if @post.nil?
  	  "no image"
  	else
      root_url[0...-1] + @post.image(:thumb)
  	end
  end
end