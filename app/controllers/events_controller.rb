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
    @title = params[:event_title]
 
    
  end
end
