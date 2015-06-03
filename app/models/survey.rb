class Survey < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :options, through: :answers
end
