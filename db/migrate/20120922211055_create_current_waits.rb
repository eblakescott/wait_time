class CreateCurrentWaits < ActiveRecord::Migration
  def change
    create_table :current_waits do |t|
      t.integer :location_id
      t.integer :wait_id

      t.timestamps
    end
  end
end
