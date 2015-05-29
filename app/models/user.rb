class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :login

  has_many :websites, through: :users_websites
  has_many :users_websites
  has_many :questions
  has_many :answers

  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end
end
