class AddDetailsToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :details, :text
  end
end
