class CreateCompaniesCitiesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cities_companies, id: false do |t|
      t.integer :company_id
      t.integer :city_id
    end

    add_index :cities_companies, :company_id
    add_index :cities_companies, :city_id
  end
end
