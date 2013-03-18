class Project < ActiveRecord::Base
  attr_accessible :desvription

  validates :desvription, presence: true
end
