class Reservation < ApplicationRecord
  belongs_to :bootcamp
  belongs_to :user

  validates :total_price, presence: true
end
