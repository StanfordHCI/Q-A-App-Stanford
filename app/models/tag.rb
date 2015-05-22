class Tag < ActiveRecord::Base
  has_many :questions, through: :questions_tags
  has_many :questions_tags
end
