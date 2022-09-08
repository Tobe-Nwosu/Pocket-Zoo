class Finding < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  has_one_attached :photo

  # validates :photo, attached: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
