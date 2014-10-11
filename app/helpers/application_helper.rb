module ApplicationHelper

  # Return a title on a per-page basis.
  def tag_search
    @tag = "sports"
    @eventsCloseBy = events.search
    @eventsWithTag = Array[]
    eventsCloseBy.each do |eventsCloseBy|
      if(eventsCloseBy.include? tag)
        eventsWithTag.push(eventsCloseBy)
    end
  
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
