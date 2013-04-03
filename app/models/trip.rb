class Trip < ActiveRecord::Base
  validates_presence_of :title, :message => 'is required'
  validates_presence_of :body, :message => 'is required'
  has_many :questions
  attr_accessible :body, :public, :title
end
