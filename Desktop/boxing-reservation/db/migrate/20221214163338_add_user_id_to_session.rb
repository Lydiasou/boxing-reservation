class AddUserIdToSession < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :user_id, :integer
  end
end
