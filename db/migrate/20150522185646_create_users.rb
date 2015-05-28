class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :country, limit: 30
      t.string :website
      t.text :summary
      t.string :avatar
      t.datetime :registered_at
      t.timestamps null: false
    end
  end
end
