class Finding < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :date, presence: true
  validates :address, presence: true
  validates :photo, attached: true
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
