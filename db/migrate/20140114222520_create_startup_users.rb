class CreateStartupUsers < ActiveRecord::Migration
  def change
    create_table :startup_users do |t|
      t.integer :startup_id
      t.integer :user_id

      t.timestamps
    end
  end
end
