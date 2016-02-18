class Meal < ActiveRecord::Base

  has_many :dishes

  validates :eaten_on, presence: true

end
