class Field < ActiveRecord::Base
  belongs_to :survey
  has_many :options
end
