class List < ApplicationRecord
  validates :name, uniqueness: true, allow_nil: false
end
