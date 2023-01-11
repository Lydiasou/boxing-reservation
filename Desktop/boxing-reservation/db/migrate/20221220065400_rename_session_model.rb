class RenameSessionModel < ActiveRecord::Migration[7.0]
  def change
    rename_table :sessions, :bootcamps
  end
end
