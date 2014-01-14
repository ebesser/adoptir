class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :company_url
      t.text :product_desc
      t.integer :follower_count
      t.string :twitter_url
      t.string :crunchbase_url
      t.string :angellist_url
      t.integer :market_id
      t.string :logo_url

      t.timestamps
    end
  end
end
