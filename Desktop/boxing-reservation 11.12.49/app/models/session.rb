class Session < ApplicationRecord
  belongs_to :user
  has_many :reservation, dependent: :destroy

  COACH = ['Coach Naoufel', 'Tchakoute', 'Coach Naoufel x Tchakoute']
  ADDRESS = ['Atch Academy : 3 rue courtois, 93500 Pantin']
  TITLE_ADDRESS = ['93500 Pantin']

  validates :title, presence: true
  validates :date, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :address, inclusion: { in: Session::ADDRESS }, presence: true
  validates :title_address, inclusion: { in: Session::TITLE_ADDRESS }, presence: true
  validates :coach, inclusion: { in: Session::COACH }, presence: true
  validates :price, presence: true
  validates :max_participation, presence: true
  validates :description, presence: true
end
