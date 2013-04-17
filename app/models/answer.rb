class Answer < ActiveRecord::Base
  validates_presence_of :body, :message => 'is required'
  has_one :question
  attr_accessible :body, :question_id
end
