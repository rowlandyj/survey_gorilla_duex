class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys
  validates :email, presence: true, uniqueness: true
  has_many :answer_users
  has_many :answers, through: :answer_users
  attr_accessible :email, :user_name, :password
end
