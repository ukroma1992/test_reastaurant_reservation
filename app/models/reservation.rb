class Reservation < ApplicationRecord
  belongs_to :table
  belongs_to :user

  validates :number_of_guests, :from, :to, presence: true
end
