class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bootcamps
  # has_many :rented_bootcamps, through: :bootcamps, source: :reservations
  has_many :reservations, through: :bootcamps, source: :reservations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, uniqueness: true
end
