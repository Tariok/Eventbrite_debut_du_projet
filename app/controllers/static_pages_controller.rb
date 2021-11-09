class StaticPagesController < ApplicationController
  def index
    @all_events_array = Event.all
  end
end
