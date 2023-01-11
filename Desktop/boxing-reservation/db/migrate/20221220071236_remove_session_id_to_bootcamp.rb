class RemoveSessionIdToBootcamp < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :session_id
  end
end
