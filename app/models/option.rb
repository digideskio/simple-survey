class Option < ActiveRecord::Base
  belongs_to :field
  belongs_to :submission
end
