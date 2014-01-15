class StartupUser < ActiveRecord::Base
  attr_accessible :startup_id, :user_id, :user, :startup

  belongs_to :user
  belongs_to :startup
end
