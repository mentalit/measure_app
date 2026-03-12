class AddWallNameToWalls < ActiveRecord::Migration[8.1]
  def change
    add_column :walls, :wall_name, :string
  end
end
