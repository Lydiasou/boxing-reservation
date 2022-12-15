class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.date :date
      t.datetime :start_at
      t.datetime :end_at
      t.text :description
      t.string :coach
      t.string :address
      t.string :title_address
      t.integer :price
      t.integer :max_participation

      t.timestamps
    end
  end
end
