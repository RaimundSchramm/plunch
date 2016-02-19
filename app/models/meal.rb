class Meal < ActiveRecord::Base

  belongs_to :dish

  validates :eaten_on, presence: true

  default_scope { order(eaten_on: :desc) }

end
