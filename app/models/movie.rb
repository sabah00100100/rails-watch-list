class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # belongs_to :movie
  # belongs_to :list
  # validates overview?
  # validates :title, uniqueness: true, presence: true
  # validates :overview, presence: true
end
