class RemoveUserIdToSession < ActiveRecord::Migration[7.0]
  def change
    remove_column :sessions, :user_id
  end
end
