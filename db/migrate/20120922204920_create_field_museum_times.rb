class CreateFieldMuseumTimes < ActiveRecord::Migration
  def change
    create_table :field_museum_times do |t|
      t.string :current_wait
      t.string :posted_at
      t.string :posted_by
      t.text :comments

      t.timestamps
    end
  end
end
