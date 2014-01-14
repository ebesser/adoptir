class StartupsController < ApplicationController

  def show
    startup_id = params[:id].to_i
    @startup = Startup.find(startup_id)
  end

end   