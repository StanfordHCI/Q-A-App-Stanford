class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :is_poll
      t.text :details
      t.integer :category_id
      t.integer :user_id
      t.integer :views_count
      t.integer :up_vote_count
      t.integer :down_vote_count
      t.timestamps null: false
    end
  end
end
