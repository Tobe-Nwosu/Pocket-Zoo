class Animal < ApplicationRecord
  has_many :findings

  validates :name, uniqueness: true
  validates :photo, presence: true
end
