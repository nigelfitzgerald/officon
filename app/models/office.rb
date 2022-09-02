class Office < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :surface, :price, :description, :title, :address, presence: true
  # validates :title, length: { minimum: 10 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
