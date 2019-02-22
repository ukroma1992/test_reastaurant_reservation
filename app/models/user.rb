class User < ApplicationRecord
  has_many :reservations

  validates :name, :phone_number, presence: true
end
