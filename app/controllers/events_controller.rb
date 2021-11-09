class EventsController < ApplicationController
  def new
    Event.new
  end

  def show
    @event = Event.find_by(id: params[:id])
    
    @event_author = @event.admin.first_name
    @event_title = @event.title
    @event_description = @event.description
    @event_start_day = @event.start_date
    @event_duration = @event.duration
    @event_price = @event.price
    @event_location = @event.location
 
  end

  def create
    @start_date = DateTime.parse(params[:start_date])
    @duration = params[:duration].to_i
    @title = params[:title]
    @description = params[:description]
    @price = params[:price].to_i
    @location = params[:location]

    @event = Event.new(start_date:@start_date, duration:@duration, title:@title, description:@description, price:@price, location:@location, admin:current_user)
    puts "$"*60
    puts @start_date
    puts "$"*60

    if @event.save 
      redirect_to "/"
  
  else
    @event.errors.full_messages.each{|e|puts e}
    render :action => :new
    
  end
    
  end
end
