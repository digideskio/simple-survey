class Answer < ActiveRecord::Base
  belongs_to :survey
  belongs_to :option
end
