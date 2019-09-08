class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  hasy_many :photos
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :address, presence: true, length: { maximum: 240, minimum: 3 }
  validates :description, presence: true, length: { maximum: 500, minimum: 3 }
end
