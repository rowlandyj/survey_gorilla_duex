class Survey < ActiveRecord::Base
  validates :title, presence: true
  has_many :questions, dependent: :destroy
  belongs_to :creator, class_name: 'User' 
  attr_accessible :title, :creator_id, :questions_attributes
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
