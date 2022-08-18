class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, :list, presence: true
  validates :movie, :list, uniqueness: true
  belongs_to :movie
  belongs_to :list
end
