class Animal < ApplicationRecord
  has_many :findings
  has_one_attached :photo

  validates :name, uniqueness: true
  # validates :photo, presence: true
end
