class AddReferencesToReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference(:reservations, :bootcamp)
  end
end
