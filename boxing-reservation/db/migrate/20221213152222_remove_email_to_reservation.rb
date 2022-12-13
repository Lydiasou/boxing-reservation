class RemoveEmailToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :email
  end
end
