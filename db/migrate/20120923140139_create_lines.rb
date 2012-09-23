class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :current_wait
      t.integer :location_id

      t.timestamps
    end
  end
end
