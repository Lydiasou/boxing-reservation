class RemoveLastNameToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :last_name
  end
end
