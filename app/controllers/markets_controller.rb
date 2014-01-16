class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end

  def show
    @markets = Market.all
    @market_selected = params[:market_id]
    @market = Market.find(@market_selected).startups.order("follower_count DESC")
  end

end