class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end

  def show
    market_selected = params[:market_id]
    @market = Market.find(market_selected)
  end

end