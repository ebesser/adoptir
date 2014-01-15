class CreateUsersStartups < ActiveRecord::Migration
  def change
    create_table :users_startups do |t|
      t.integer :user_id
      t.integer :startup_id

      t.timestamps
    end
  end
end
