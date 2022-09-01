class Office < ApplicationRecord
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description, :address ],
    using: {
      tsearch: { prefix: true }
  }

end
