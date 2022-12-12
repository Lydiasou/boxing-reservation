class Reservation < ApplicationRecord
  belongs_to :session
  # belongs_to :user

  # validates :total_price, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :phone, :presence => { :message => 'hello world, bad operation!' },
                    :numericality => true,
                    :length => { :minimum => 10, :maximum => 15 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
