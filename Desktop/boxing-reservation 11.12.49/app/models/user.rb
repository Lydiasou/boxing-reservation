class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :sessions
  # has_many :rented_sessions, through: :sessions, source: :reservations
  has_many :reservations, through: :sessions, source: :reservations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
