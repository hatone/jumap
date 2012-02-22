class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer     :latitude
      t.integer     :longitude
      t.string      :geohash
      t.string      :note
      t.timestamps
    end
  end
end
