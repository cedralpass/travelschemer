class Trip < ActiveRecord::Base
  validates_presence_of :title, :message => 'is required'
  validates_presence_of :body, :message => 'is required'
  validates_presence_of :user_id , :message => 'is required'
  has_many :questions
  belongs_to :user
  attr_accessible :body, :public, :title,:user_id
end
