class Answer < ActiveRecord::Base
  has_many :answer_users
  has_many :users, through: :answer_users 
  belongs_to :question
  attr_accessible :content, :question_id
end
