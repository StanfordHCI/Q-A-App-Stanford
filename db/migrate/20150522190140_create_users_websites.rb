class CreateUsersWebsites < ActiveRecord::Migration
  def change
    create_table :users_websites do |t|
      t.integer :user_id
      t.integer :website_id
      t.timestamps null: false
    end
  end
end
