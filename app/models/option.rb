class Option < ActiveRecord::Base
  belongs_to :question
  has_many :answers
  has_many :surveys, through: :answers
end
