class HomeController < ApplicationController
  
  def index
    @recent_events = LifeEvent.order("created_at DESC").limit(3)
    @recent_schools = School.order("created_at DESC").limit(3)
  end

end
