class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
end
