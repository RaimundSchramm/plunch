class Dish < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  default_scope { eaten_lastly }
  scope :eaten_lastly, -> { order(eaten_on: :desc) }

  has_many :meals
end
