class AddMeasurementMetadataToWalls < ActiveRecord::Migration[8.1]
  def change
    add_column :walls, :measurement_source, :string, null: false, default: "manual"
    add_column :walls, :manual_entered, :boolean, null: false, default: false
    add_column :walls, :measurement_notes, :text
  end
end