class Finding < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_one_attached :photo

  validates :date, presence: true
  validates :address, presence: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
