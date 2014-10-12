module ApplicationHelper

  # Return a title on a per-page basis.
  def tag_search?
    @tag = "sports"
    @eventsCloseBy = events.search
    @eventsWithTag = Array[]
    eventsCloseBy.each do |eventsCloseBy|
      if(eventsCloseBy.include? tag)
        eventsWithTag.push(eventsCloseBy)
      end
    end
  end

  def event_search?
      @events = Event.all
      @withinRadius = @current_user.radius > (((@current_user.lat - @event.lat)**2 +(@current_user.lon - @event.lon)**2)**.5)
      @local_event = @event.where(withinRadius => true)
    end
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

  def event_search?
    @events = Event.all
    @user = User.find(params[:id])
    @local_events = @events.where(:lat => (()) )
  end
end
