class EventsController < ApplicationController
  # GET /events
  # GET /events.xml
  def index
    @attendance = Attendances.all
    @mainTags = Array["sports", "video games", "movies", "food", "music"]
    @mainTagsCount = Array[0,0,0,0,0]
    @attendedEvents = @current_user.attendence

    for @i in 0..@attendedEvents.size-1
    if(@attenededEvents.tags.first eql? "sports")
      @mainTagsCount[0] = @mainTagsCount[0]+1
    elsif(@attenededEvents.tags.first eql? "video games")
      @mainTagsCount[1] = @mainTagsCount[1]+1
    elsif(@attenededEvents.tags.first eql? "movies")
      @mainTagsCount[2] = @mainTagsCount[2]+1
    elsif(@attenededEvents.tags.first eql? "food")
      @mainTagsCount[3] = @mainTagsCount[3]+1
    else
      @mainTagsCount[4] = @mainTagsCount[4]+1
    end
    @max = @mainTagsCount.max_by(&:field);
    @indexOfMax=@mainTagsCount.index(max);
    @mainTagsCount[@indexOfMax]=0;
    @max2;
    @indexOfMax2;

    for @i in 0..@mainTagsCount.size-1
      if(@mainTagsCount[@i]>=@max2)
        @max2 = @mainTagsCount[@i]
        end
        @indexOfMax2 = @mainTagsCount.index(@max2)
      end

    @firstChoice = @mainTags[@inedexOfMax]
    @secondChoice = @mainTags[@indexOfMax2]
    @event = tag_search?(@firstChoice)

    respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @event }
      end

    @event2  = tag_search?(@secondChoice)  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event2 }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to(@event, :notice => 'Event was successfully created.') }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(@event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
