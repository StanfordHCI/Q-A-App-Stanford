class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :websites, through: :users_websites
  has_many :users_websites
  has_many :questions
  has_many :answers
end
