class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies

  validates :name, presence: true, uniqueness: true
end