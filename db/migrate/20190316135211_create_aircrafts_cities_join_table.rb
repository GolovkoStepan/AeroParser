class CreateAircraftsCitiesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts_cities, id: false do |t|
      t.integer :aircraft_id
      t.integer :city_id
    end

    add_index :aircrafts_cities, :aircraft_id
    add_index :aircrafts_cities, :city_id
  end
end
