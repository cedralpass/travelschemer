class Question < ActiveRecord::Base
  validates_presence_of :title, :message => 'is required'
  validates_presence_of :body, :message => 'is required'
  belongs_to :trip
  belongs_to :user
  has_many :answers

  attr_accessible :body, :title, :trip, :trip_id
end
