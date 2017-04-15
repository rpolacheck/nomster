class Place < ApplicationRecord
  belongs_to :user
  paginates_per 5
  validates :name, presence: true
end
