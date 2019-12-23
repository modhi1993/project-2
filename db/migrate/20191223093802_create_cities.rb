class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :cityname
      t.references :haul, null: false, foreign_key: true

      t.timestamps
    end
  end
end
