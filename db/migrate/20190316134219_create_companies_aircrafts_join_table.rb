class CreateCompaniesAircraftsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts_companies, id: false do |t|
      t.integer :company_id
      t.integer :aircraft_id
    end

    add_index :aircrafts_companies, :company_id
    add_index :aircrafts_companies, :aircraft_id
  end
end
