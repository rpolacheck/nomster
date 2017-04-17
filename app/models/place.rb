class Place < ApplicationRecord
  belongs_to :user
  has_many :comments

  geocoded_by :address
  after_validation :geocode
  paginates_per 5
  
  validates :name, length: {minimum: 3}, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
