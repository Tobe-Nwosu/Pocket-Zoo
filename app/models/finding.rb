class Finding < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  geocoded_by :address
  has_one_attached :photo

  # validates :photo, attached: true
  # validates :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
