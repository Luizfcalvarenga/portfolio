class AddColumnToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :logo, :string
    add_column :profiles, :description, :text
    add_column :profiles, :start, :date
    add_column :profiles, :end, :date
  end
end
