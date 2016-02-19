class Meal < ActiveRecord::Base

  belongs_to :dish

  validates :eaten_on, presence: true

end
