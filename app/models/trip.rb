class Trip < ActiveRecord::Base
  validates_presence_of :title, :message => 'is required'
  validates_presence_of :body, :message => 'is required'
  #validates_presence_of :user_id , :message => 'is required'
  has_many :questions
  has_one :user
  attr_accessible :body, :public, :title, :user_id, :user
end
