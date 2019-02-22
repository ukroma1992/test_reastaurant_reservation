class Table < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations

  validates :number, :num_seats, presence: true

  scope :by_number, -> { order("number ASC") }
end
