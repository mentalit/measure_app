class CreateHouses < ActiveRecord::Migration[8.1]
  def change
    create_table :houses do |t|
      t.text :address
      t.string :town
      t.string :state
      t.integer :zip
      t.text :notes

      t.timestamps
    end
  end
end
