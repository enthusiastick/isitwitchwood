class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)
    if @event.save
      flash['alert-box success'] = "Event saved."
      redirect_to events_path
    else
      flash.now['alert-box alert'] = "Error! Please check your input and retry."
      render :new
    end
  end

  def index
    @events = Event.order(:start_time).limit("10")
  end

  def new
    @event = Event.new
  end

  protected

  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end

end
