class RemoveFirstNameToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :first_name
  end
end
