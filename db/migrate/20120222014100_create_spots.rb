class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.decimal     :latitude
      t.decimal     :longitude
      t.string      :geohash
      t.string      :note
      t.timestamps
    end
  end
end
