class StartupUsersController < ApplicationController

  def create
    

    startup = Startup.find(params[:id].to_i)
    
    
    StartupUser.create(user: current_user, startup: startup)

    redirect_to "/markets/show?market_id=#{startup.market_id}"
  end

  def delete
    
    startup = params[:id]

    startup_user = StartupUser.where("user_id=#{current_user.id} AND startup_id=#{startup}")
  
    startup_user.destroy

  end

end