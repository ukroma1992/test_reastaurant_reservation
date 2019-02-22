class Restaurant < ApplicationRecord
  has_many :tables

  validates :name, :address, :open, :close, presence: true
end
