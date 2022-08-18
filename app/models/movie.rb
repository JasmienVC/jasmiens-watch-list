class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, allow_nil: false
end
