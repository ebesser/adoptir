class AddWorkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :work, :string
  end
end
