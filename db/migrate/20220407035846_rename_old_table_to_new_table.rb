class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :profiles, :experiences
  end
end
