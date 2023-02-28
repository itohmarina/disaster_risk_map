class Pin < ApplicationRecord

  validates :name, presence: true
  validates :body, presence: true
  validates :lat, presence: true
  validates :lng, presence: true

end
