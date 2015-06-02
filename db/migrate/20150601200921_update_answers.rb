class UpdateAnswers < ActiveRecord::Migration
  def change
    change_table :answers do |t|
      t.change :accepted,        :boolean, default: false
      t.change :up_vote_count,   :integer, default: 0
      t.change :down_vote_count, :integer, default: 0
    end
  end
end
