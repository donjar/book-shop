class Book < ApplicationRecord
  validates(:count, numericality: { greater_than_or_equal_to: 0 })
end
