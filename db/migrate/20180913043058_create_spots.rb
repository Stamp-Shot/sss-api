class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.integer :cource_id
      t.string :name
      t.float :GPS_X
      t.float :GPS_Y
      t.string :image

      t.timestamps
    end
  end
end
