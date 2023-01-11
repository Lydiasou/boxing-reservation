class AddReservation < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :total_price
      t.string :first_name
      t.references :bootcamp, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
