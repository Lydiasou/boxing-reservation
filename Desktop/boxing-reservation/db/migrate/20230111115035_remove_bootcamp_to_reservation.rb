class RemoveBootcampToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :bootcamp_id
  end
end
