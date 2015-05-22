class User < ActiveRecord::Base
  has_many :websites, through: :users_websites
  has_many :users_websites
  has_many :questions
  has_many :answers
  
end
