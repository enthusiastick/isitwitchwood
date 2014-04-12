class PagesController < ApplicationController

  def index
    @now = DateTime.now
    @next_event = Event.order(:start_time).where("start_time >= ?", Date.today).first
  end

end
