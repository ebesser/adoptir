class Startup < ActiveRecord::Base
  attr_accessible :angellist_url, :company_url, :crunchbase_url, :follower_count, :market_id, :name, :product_desc, :twitter_url, :logo_url

  belongs_to :market
end
