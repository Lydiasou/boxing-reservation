class RemovePhoneNumberToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :phone_number
  end
end
