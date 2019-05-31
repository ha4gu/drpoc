class Task < ApplicationRecord
  # Validation
  validates :title, presence: true
end
