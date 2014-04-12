class PagesController < ApplicationController

  def index
    @now = DateTime.now
    @next_event = Event.order(:start_time).first
  end

end
