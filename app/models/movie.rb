class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, allow_nil: false
  has_many :bookmarks, dependent: :restrict_with_error
end
