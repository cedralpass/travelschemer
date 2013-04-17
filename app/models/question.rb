class Question < ActiveRecord::Base
  validates_presence_of :title, :message => 'is required'
  validates_presence_of :body, :message => 'is required'
  has_one :trip
  has_many :answers
  attr_accessible :body, :title, :trip, :trip_id
end
