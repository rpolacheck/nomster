class Place < ApplicationRecord
  belongs_to :user
  paginates_per 5
  validates :name, length: {minimum: 3}, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
