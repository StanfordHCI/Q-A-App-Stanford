class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :tags, through: :questions_tags
  has_many :questions_tags
  has_many :answers
end
