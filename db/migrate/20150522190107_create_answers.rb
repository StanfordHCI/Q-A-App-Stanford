class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.boolean :accepted
      t.integer :user_id
      t.integer :up_vote_count
      t.integer :down_vote_count
      t.timestamps null: false
    end
  end
end
