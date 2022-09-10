class Animal < ApplicationRecord
  has_many :findings
  has_one_attached :photo

  validates :name, uniqueness: true
  # validates :photo, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_and_details,
    against: [ :name, :details ],
    using: {
      tsearch: { prefix: true }
    }
end
