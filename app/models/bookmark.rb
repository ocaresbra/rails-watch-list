class Bookmark < ApplicationRecord

  belongs_to :list
  belongs_to :movie

  validates :comment, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }

  validates :comment, length: { minumum: 6 }
end
