class CreateCources < ActiveRecord::Migration[5.2]
  def change
    create_table :cources do |t|
      t.string :name
      t.integer :spot_num

      t.timestamps
    end
  end
end
