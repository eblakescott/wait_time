class CreateWaits < ActiveRecord::Migration
  def change
    create_table :waits do |t|
      t.datetime :time
      t.string :location_id

      t.timestamps
    end
  end
end
