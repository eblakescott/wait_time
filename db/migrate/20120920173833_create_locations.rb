class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.string :type
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
