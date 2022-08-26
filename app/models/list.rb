class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
  # has_many :bookmarks, dependent: :destroy
  # has_many :movies, through: :bookmarks

  # include PgSearch::Model
  # pg_search_scope :search_by_name,
  # against: [ :name ],
  # using: {
  #   tsearch: { prefix: true }
    # <-- now `superman batm` will return something!

end
