class UpdateQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.change :views_count,     :integer, default: 0
      t.change :up_vote_count,   :integer, default: 0
      t.change :down_vote_count, :integer, default: 0
    end
  end
end
