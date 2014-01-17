class MarketsController < ApplicationController

  def index
    unless user_signed_in? 
      redirect_to '/users/sign_in'
    end
    @markets = Market.all
  end

  def show
    @markets = Market.all
    @market_selected = params[:market_id]
    @market = Market.find(@market_selected).startups.order("follower_count DESC").paginate(:page => params[:page], :per_page => 8)
    @starts = Startup.all
  end


end