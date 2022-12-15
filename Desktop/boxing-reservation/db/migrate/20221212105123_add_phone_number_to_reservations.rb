class AddPhoneNumberToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :phone_number, :string
  end
end
