class Animal < ApplicationRecord
  has_many :findings

  validates :name, uniqueness: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
