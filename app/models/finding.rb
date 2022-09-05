class Finding < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :photo, presence: true
  # validates :date, presence: true
end
