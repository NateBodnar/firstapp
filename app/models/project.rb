class Project < ActiveRecord::Base
  attr_accessible :desvription

  validates :desvription, presence: true

  belongs_to :user

  validates :user_id, presence: true
end
